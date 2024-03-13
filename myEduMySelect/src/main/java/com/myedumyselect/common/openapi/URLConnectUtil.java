package com.myedumyselect.common.openapi;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import com.myedumyselect.admin.openapi.data.vo.OpenApiDTO;

public class URLConnectUtil {
	public static StringBuffer openAPIData(OpenApiDTO api) throws Exception {
		URL url = new URL(api.getSiteName());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();

		conn.setRequestMethod(api.getMethod());

		BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
		String inputLine;
		StringBuffer output = new StringBuffer();
		while ((inputLine = in.readLine()) != null) {
			output.append(inputLine);
		}
		return output;
	}
}
