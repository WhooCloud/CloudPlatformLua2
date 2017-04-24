#include "slamBase.h"
#include "robotBase.h"
void uploadFileHTTP(const char* file_path, const char* url);
string CompressString(string in_str);
string DecompressString(string in_str);

int main(int argc, char** argv)
{
	// Save an image to "./uploading.jpg", and then send it to "http://localhost/uploading"
	string StrImgName = "./rgb.png";
	string StrUploadURL = "http://localhost/uploading";
	uploadFileHTTP(StrImgName.c_str(), StrUploadURL.c_str());

    //Transform a mat into JSON format, and then send it to "ws://localhost/websocket"
    //!Note: the whole String should not be too large(>ROBOTJSON_MAXSTRINGLENGTH)
    //ROBOTJSON_MAXSTRINGLENGTH is defined in robotBase.h
    //If you change the ROBOTJSON_MAXSTRINGLENGTH, you should also change "max_payload_len" in load_balancing_webserver.lua
    string StrWSURL = "ws://localhost/websocket";
    RobotClient client;
    ParameterReader PD;
    client.setURL(StrWSURL.c_str());
    client.connect();

    //load "data_message" from ./parameters.txt
    string StrDataSend = PD.getData("data_message");
    //Initiallize JsonDataSend
    RobotJson JsonDataSend;
    JsonDataSend.setString(StrDataSend);
    //Modify JsonDataSend
    JsonDataSend.setDocString("data", "1,1,1,1,1,1,1,1");
    //Send StrDataSend
    StrDataSend = JsonDataSend.getString();
    string CStrDataSend = CompressString(StrDataSend);
    client.setDataSend(CStrDataSend);
    cout<<"main: "<<"StrDataSend: "<<StrDataSend<<endl;
    cout<<"main: "<<"StrDataSend.length() is "<<StrDataSend.length()<<endl; 
    cout<<"main: "<<"CStrDataSend.length() is "<<CStrDataSend.length()<<endl;
    client.sendBinaryData();

    //Receive Data
    client.receiveBinaryData();
    string StrDataReceive;
    string DStrDataReceive;
    StrDataReceive = client.getDataReceive();
    DStrDataReceive = DecompressString(StrDataReceive);
    
    cout<<"main: "<<"DStrDataReceive :"<<DStrDataReceive<<endl;

	return 0;
}