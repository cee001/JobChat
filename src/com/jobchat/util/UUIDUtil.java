package com.jobchat.util;

import java.util.UUID;

public class UUIDUtil {

	/**
	 * new文件名= 时间 + 全球唯一编号
	 * 
	 * @param fileName
	 *            old文件名
	 * @return new文件名
	 */
	public static String generateString() {
		String uuid = UUID.randomUUID().toString();
//		int position = fileName.lastIndexOf(".");
//		String extension = fileName.substring(position);
		return uuid;
	}
}
