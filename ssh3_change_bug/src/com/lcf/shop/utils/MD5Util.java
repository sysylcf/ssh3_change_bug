package com.lcf.shop.utils;



import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Util {
//MD5的字符串常量
private final static String[] hexDigits = { "0", "1", "2", "3", "4",
   "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f" };


public static  String getMD5String(String  password){
	 String MD5_passwords =null;
	 MessageDigest messageDigest;
	try {
		messageDigest = MessageDigest.getInstance("MD5");
	 MD5_passwords = byteArrayToHexString(messageDigest.digest(password.getBytes()));
	} catch (NoSuchAlgorithmException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}    
	return MD5_passwords;
}
private static String byteArrayToHexString(byte[] b) {
   StringBuffer resultSb = new StringBuffer();
   for (int i = 0; i < b.length; i++) {
    resultSb.append(byteToHexString(b[i]));
   }
   return resultSb.toString();
}
/** 将一个字节转化成十六进制形式的字符串 */
private static String byteToHexString(byte b) {
   int n = b;
   if (n < 0)
    n = 256 + n;
   int d1 = n / 16;
   int d2 = n % 16;
   return hexDigits[d1] + hexDigits[d2];
}

public static void main(String[] args) {
	   // TODO Auto-generated method stub
	   try {
	    MessageDigest messageDigest= MessageDigest.getInstance("MD5");
	    System.out.println(byteArrayToHexString(messageDigest.digest("asdf".getBytes())));
	   } catch (NoSuchAlgorithmException e) {
	    // TODO Auto-generated catch block
	    e.printStackTrace();
	   }

	}
} 