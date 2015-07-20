package com.jobchat.util;

import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author  coolszy
 * @time    Dec 6, 2011 7:03:53 PM
 */
public class TextUtility
{
	public static boolean isNull(String str)
	{
		if (null==str||str.length()==0)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	public static String subString(String str)
	{
		if (isNull(str))
		{
			return "";
		}
		else
		{
			str = str.substring(0, 50);
			str = str.replaceAll("\r\n", "��");
			str = str.replace("<p>", "");
			str = str.replace("</p>", "");
			str = str.replace("����", "");
			str +="...";
			return str;
		}
	}
	
	/**
	 * ���ַ�ת��������
	 * @param str ��ת���ַ� 
	 * @return
	 */
	public static int String2Int(String str)
	{
		if(isNull(str)){
			return -1;
		}
		try
		{
			int value = Integer.valueOf(str);
			return value;
		} catch (Exception e)
		{
			e.printStackTrace();
			return -1;
		}
	}
	
	/**
	 * ���б���
	 * @param str
	 * @return
	 */
	public static String toUTF8(String str)
	{
		if (!isNull(str))
		{
			try
			{
				str = new String(str.getBytes("ISO8859-1"),"UTF-8");
			} catch (UnsupportedEncodingException e)
			{
				e.printStackTrace();
			}
		}
		return str;
	}
	
	/**
	 * ��ʽ��ʱ��
	 * @param date
	 * @return
	 */
	public static String formatDate(Date date)
	{
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return format.format(date);
	}
}
