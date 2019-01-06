package net.zjwu.mis.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormatUtil {
     public static String toDateoString(Date date){
    	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
 		String dateTime = format.format(date);
 		return dateTime;
     }
}
