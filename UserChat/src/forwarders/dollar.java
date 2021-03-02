package forwarders;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

class ApiConnection{
	String json;//파싱할 최종 데이터 담아주기 위한 문자열
	ApiConnection() throws Exception{
		//api 주소
		String address ="http://api.currencylayer.com/live?access_key=d0a0b6fc03ef106cd7a526ffa378e0d7";
		BufferedReader br;
		URL url;
		HttpURLConnection conn;
		String protocol = "GET";
		
		url = new URL(address);
		conn = (HttpURLConnection)url.openConnection();
		conn.setRequestMethod(protocol);
		br=new BufferedReader(new InputStreamReader(conn.getInputStream()));
		json = br.readLine();
	}
}

public class dollar {
	public static void main(String[] args) throws Exception {
		//생성
		ApiConnection wc = new ApiConnection();
		//json 문자열 데이터
		String json = wc.json;
		JSONParser parser = new JSONParser();
		//json  형식의 문자열을 json 객체로 parsing
		JSONObject obj =(JSONObject)parser.parse(json);
		//Object(Json 객체)
		JSONObject quotes = (JSONObject) obj.get("quotes");
		//Object key값 지정 : value 산출하기 (내가 가져오고자 하는 값)
		Object USEAED = quotes.get("USDKRW");
		System.out.println("원달러 : " + USEAED);
	}
}











