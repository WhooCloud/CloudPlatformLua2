local server = require "resty.websocket.server"
local cjson = require "cjson.safe"
local ffi = require "ffi"
local slamInterface = ffi.load("libslamInterface.so")
local zlib = ffi.load(ffi.os == "Windows" and "zlib1" or "z")

if pcall(function () return slamInterface.FFIInterface end) then
    -- do nothing
else
ffi.cdef[[
    char* FFISLAMInterface(const char* data);
    unsigned long compressBound(unsigned long sourceLen);
    int compress2(uint8_t *dest, unsigned long *destLen,
              const uint8_t *source, unsigned long sourceLen, int level);
    int uncompress(uint8_t *dest, unsigned long *destLen,
               const uint8_t *source, unsigned long sourceLen);     
]]
end

local function compress(txt)
  local n = zlib.compressBound(#txt)
  local buf = ffi.new("uint8_t[?]", n)
  local buflen = ffi.new("unsigned long[1]", n)
  local res = zlib.compress2(buf, buflen, txt, #txt, 9)
  assert(res == 0)
  return ffi.string(buf, buflen[0])
end

local function uncompress(comp, n)
  local buf = ffi.new("uint8_t[?]", n)
  local buflen = ffi.new("unsigned long[1]", n)
  local res = zlib.uncompress(buf, buflen, comp, #comp)
  assert(res == 0)
  return ffi.string(buf, buflen[0])
end

local function receiveData(wb)
    local data, typ, err = wb:recv_frame()
    if not data then
        ngx.log(ngx.ERR, "failed to receive a frame: ", err)
        return ngx.exit(444)
    end
    if typ == "text" or typ == "binary" then
        ngx.log(ngx.INFO, "received Data: ", data, " (", typ, ") ");
        return data
    else
        ngx.log(ngx.ERR, "failed to receive Data, ", "the type is: ", typ)
        return nil
    end                                                                         
end

local function delay_ms(ms)
    local time1 = get_current_time()
    while ((get_current_time() - time1) < 0.001 * ms)
    do
        --pass
    end
    return
end

local wb, err = server:new{
    --timeout = 30,  -- in milliseconds
    max_payload_len = 200*1024,
}
if not wb then
    ngx.log(ngx.ERR, "failed to new websocket: ", err)
    return ngx.exit(444)
end

while true
do
    local data = uncompress(receiveData(wb), 200*1024)

    local c_result = slamInterface.FFISLAMInterface(data)
    ngx.log(ngx.INFO, "receive data is: ", data)
    ngx.log(ngx.INFO, "c_result ", ffi.string(c_result)) 
    
    local bytes, err = wb:send_binary(compress(ffi.string(c_result)))
    if not bytes then
      ngx.log(ngx.ERR, "failed to send a text frame: ", err)
      return ngx.exit(444)
    end
end

local bytes, err = wb:send_close(1000, "enough, enough!")
if not bytes then
    ngx.log(ngx.ERR, "failed to send the close frame: ", err)
    return
end

