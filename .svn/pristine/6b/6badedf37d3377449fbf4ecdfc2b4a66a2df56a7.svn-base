package com.jobchat.util;
import java.text.*;
import java.util.Calendar;
import java.util.Date;

public class TimeUtil {
	/**
	 * 获取现在时间
	 * 
	 * @return 返回时间类型 yyyy-MM-dd HH:mm:ss
	 */
	public static Date getNowDate() {
		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString = formatter.format(currentTime);
		ParsePosition pos = new ParsePosition(8);
		Date currentTime_2 = formatter.parse(dateString, pos);
		return currentTime_2;
	}

	// /**
	// * 获取现在时间
	// *
	// * @return返回短时间格式 yyyy-MM-dd
	// */
	// DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
	// DateFormat format 2= new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
	// Date date = null;
	// String str = null;
	//
	// // String转Date
	// str = "2007-1-18";
	// try {
	// date = format1.parse(str);
	// data = format2.parse(str);
	// } catch (ParseException e) {
	// e.printStackTrace();
	// }
	/**
	 * 获取现在时间
	 * 
	 * @return返回字符串格式 yyyy-MM-dd HH:mm:ss
	 */
	public static String getStringDate() {
		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString = formatter.format(currentTime);
		return dateString;
	}

	/**
	 * 获取现在时间
	 * 
	 * @return 返回短时间字符串格式yyyy-MM-dd
	 */
	public static String getStringDateShort() {
		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = formatter.format(currentTime);
		return dateString;
	}

	/**
	 * 获取时间 小时:分;秒 HH:mm:ss
	 * 
	 * @return
	 */
	public static String getTimeShort() {
		SimpleDateFormat formatter = new SimpleDateFormat("HH:mm:ss");
		Date currentTime = new Date();
		String dateString = formatter.format(currentTime);
		return dateString;
	}

	/**
	 * 将长时间格式字符串转换为时间 yyyy-MM-dd HH:mm:ss
	 * 
	 * @param strDate
	 * @return
	 */
	public static Date strToDateLong(String strDate) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		ParsePosition pos = new ParsePosition(0);
		Date strtodate = formatter.parse(strDate, pos);
		return strtodate;
	}

	/**
	 * 将长时间格式时间转换为字符串 yyyy-MM-dd HH:mm:ss
	 * 
	 * @param dateDate
	 * @return
	 */
	public static String dateToStrLong(java.util.Date dateDate) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString = formatter.format(dateDate);
		return dateString;
	}
	
	/**
	 * 将长时间格式时间转换为字符串 yyyy-MM-dd HH:mm
	 * 
	 * @param dateDate
	 * @return
	 */
	public static String dateToStr2(java.util.Date dateDate) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		String dateString = formatter.format(dateDate);
		return dateString;
	}

	/**
	 * 将短时间格式时间转换为字符串 yyyy-MM-dd
	 * 
	 * @param dateDate
	 * @param k
	 * @return
	 */
	public static String dateToStr(java.util.Date dateDate) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = formatter.format(dateDate);
		return dateString;
	}

	/**
	 * 将短时间格式字符串转换为时间 yyyy-MM-dd
	 * 
	 * @param strDate
	 * @return
	 */
	public static Date strToDate(String strDate) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		ParsePosition pos = new ParsePosition(0);
		Date strtodate = formatter.parse(strDate, pos);
		return strtodate;
	}

	/**
	 * 得到现在时间
	 * 
	 * @return
	 */
	public static Date getNow() {
		Date currentTime = new Date();
		return currentTime;
	}

	/**
	 * 提取一个月中的最后一天
	 * 
	 * @param day
	 * @return
	 */
	public static Date getLastDate(long day) {
		Date date = new Date();
		long date_3_hm = date.getTime() - 3600000 * 34 * day;
		Date date_3_hm_date = new Date(date_3_hm);
		return date_3_hm_date;
	}

	/**
	 * 得到现在时间
	 * 
	 * @return 字符串 yyyyMMdd HHmmss
	 */
	public static String getStringToday() {
		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd HHmmss");
		String dateString = formatter.format(currentTime);
		return dateString;
	}

	/**
	 * 得到现在小时
	 */
	public static String getHour() {
		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString = formatter.format(currentTime);
		String hour;
		hour = dateString.substring(11, 13);
		return hour;
	}

	/**
	 * 得到现在分钟
	 * 
	 * @return
	 */
	public static String getTime() {
		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString = formatter.format(currentTime);
		String min;
		min = dateString.substring(14, 16);
		return min;
	}

	/**
	 * 根据用户传入的时间表示格式，返回当前时间的格式 如果是yyyyMMdd，注意字母y不能大写。
	 * 
	 * @param sformat
	 *            yyyyMMddhhmmss
	 * @return
	 */
	public static String getUserDate(String sformat) {
		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat(sformat);
		String dateString = formatter.format(currentTime);
		return dateString;
	}
	
	/** 
	 * 将时间转为代表"距现在多久之前"的字符串 
	 * @param timeStr   时间戳 
	 * @return 
	 */ 
	public static String getTimeDiff(Date date) {
		Calendar cal = Calendar.getInstance();
		long diff = 0;
		Date dnow = cal.getTime();
		String str = "";
		diff = dnow.getTime() - date.getTime();
		
		if  (diff > 2592000000L*12) {//12*30 * 24 * 60 * 60 * 1000=2592000000 毫秒
			str=(int)Math.floor(diff/2592000000f/12) + "个年前";
		}else if  (diff > 2592000000L) {//30 * 24 * 60 * 60 * 1000=2592000000 毫秒
			str=(int)Math.floor(diff/2592000000f) + "个月前";
		} else if  (diff > 604800000) {//7 * 24 * 60 * 60 * 1000=604800000 毫秒
			str=(int)Math.floor(diff/604800000f) + "周前";
		} else if (diff > 86400000) {	//24 * 60 * 60 * 1000=86400000 毫秒
			//System.out.println("X天前");
			str=(int)Math.floor(diff/86400000f) + "天前";
		} else if (diff > 3600000 ) {//5 * 60 * 60 * 1000=18000000 毫秒
			//System.out.println("X小时前");
			str=(int)Math.floor(diff/3600000f) + "小时前";
		} else if (diff > 60000) {//1 * 60 * 1000=60000 毫秒
			//System.out.println("X分钟前");
			str=(int)Math.floor(diff/60000) +"分钟前";
		}else{
			str=(int)Math.floor(diff/1000) +"秒前";
		}
		return str;
	}
	public static String getTimeDiff1(Date date) {
		Calendar cal = Calendar.getInstance();
		long diff = 0;
		Date dnow = cal.getTime();
		String str = "";
		diff = dnow.getTime() - date.getTime();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		String dateString = formatter.format(date.getTime());
		if  (diff > 253200000) {//7 * 24 * 60 * 60 * 1000=604800000 毫秒
			str=dateString;
		} else if (diff > 86400000) {	//24 * 60 * 60 * 1000=86400000 毫秒
			//System.out.println("X天前");
			str=(int)Math.floor(diff/86400000f) + "天前";
		} else if (diff > 3600000 ) {//5 * 60 * 60 * 1000=18000000 毫秒
			//System.out.println("X小时前");
			str=(int)Math.floor(diff/3600000f) + "小时前";
		} else if (diff > 60000) {//1 * 60 * 1000=60000 毫秒
			//System.out.println("X分钟前");
			str=(int)Math.floor(diff/60000) +"分钟前";
		}else{
			str=(int)Math.floor(diff/1000) +"秒前";
		}
		return str;
	}

}