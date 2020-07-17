package com.bbshop.bit.util.login;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class KakaoAPI {
	
	private final String KAUTH = "https://kauth.kakao.com/oauth/token";
	private final String KAPI = "https://kapi.kakao.com/v2/user/me";
	
	public String getAccessToken(String code) {
		
		try {
		// 커넥션 생성
			URL url = new URL(KAUTH);
            HttpURLConnection conn = (HttpURLConnection)url.openConnection();
        // 커넥션 설정
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);
        // 파라미터를 스트림에 담아서 카카오 서버에 요청
            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
            StringBuilder sb = new StringBuilder();
            sb.append("grant_type=authorization_code");
            sb.append("&client_id=8ac53956767ae67d81086241a1a789b1");
            sb.append("&redirect_uri=http://localhost:8080/login/kakao");
            sb.append("&code=" + code);
            bw.write(sb.toString());
            bw.flush();
        // json 타입의 응답 메세지 String으로 담기
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = "";
            String result = "";
            while ((line = br.readLine()) != null) { result += line; }
        // gson 라이브러리에 포함된 클래스로 json 형식의 String 파싱
            JsonParser parser = new JsonParser();
            JsonElement element = parser.parse(result);
            String access_token = element.getAsJsonObject().get("access_token").getAsString();
            String refresh_token = element.getAsJsonObject().get("refresh_token").getAsString();
            
            br.close();
            bw.close();
            
    		return access_token;
        } catch (IOException e) {
            e.printStackTrace();
        }
		return null;
	}

	public KakaoAccount getUserInfo(String access_token) {
		
		KakaoAccount user = new KakaoAccount();
		
		try {
		// 커넥션 생성
			URL url = new URL(KAPI);
			HttpURLConnection conn = (HttpURLConnection)url.openConnection();
		// 커넥션 설정
			conn.setRequestProperty("Authorization", "Bearer " + access_token);
		// 응답 데이터 string으로 저장
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = "";
            String result = "";
            while ((line = br.readLine()) != null) { result += line; }
        // 응답 데이터 json 형식 파싱
            JsonParser parser = new JsonParser();
            JsonElement element = parser.parse(result);
            // 아이디 가져오기
            long id = element.getAsJsonObject().get("id").getAsLong();
            // 이메일 가져오기
            JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
            String email = kakao_account.getAsJsonObject().get("email").getAsString();
            // 닉네임 가져오기
            JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
            String nickname = properties.getAsJsonObject().get("nickname").getAsString();
        // KakaoAccount 클래스에 데이터 바인딩
            KakaoProfile profile = new KakaoProfile();
            profile.setNickname(nickname);
            user.setProfile(profile);
            user.setId(id);
            if (email != null) user.setEmail(email);
            
            return user;
		} catch (IOException e) {
            e.printStackTrace();
		}
		return null;
	}
}
