package com.bbshop.bit.util.login;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

public class KakaoAPI {
	
	private final String KAUTH = "https://kauth.kakao.com/oauth/token";
	private String access_token;
	private String refresh_token;
	
	public String getAccessToken(String code) {
		
		try {
			URL url = new URL(KAUTH);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            
            // post 요청을 위한 커넥션 설정
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);
            
            // 파라미터를 스트림에 담는다
            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
            StringBuilder sb = new StringBuilder();
            sb.append("grant_type=authorization_code");
            sb.append("&client_id=8ac53956767ae67d81086241a1a789b1");
            sb.append("&redirect_uri=http://localhost:8080/login/kakao");
            sb.append("&code=" + code);
            bw.write(sb.toString());
            bw.flush();
            
            // 결과 코드가 200이라면 성공
            System.out.println("responseCode : " + conn.getResponseCode());
 
            // 요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = "";
            String result = "";
            while ((line = br.readLine()) != null) { result += line; }
            System.out.println("response body : " + result);
            
            // Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
            JsonParser parser = new JsonParser();
            JsonElement element = parser.parse(result);
            access_token = element.getAsJsonObject().get("access_token").getAsString();
            refresh_token = element.getAsJsonObject().get("refresh_token").getAsString();
            System.out.println("access_token : " + access_token);
            System.out.println("refresh_token : " + refresh_token);
            br.close();
            bw.close();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
		return access_token;
	}

	public KakaoUser getUserInfo(String access_token) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
