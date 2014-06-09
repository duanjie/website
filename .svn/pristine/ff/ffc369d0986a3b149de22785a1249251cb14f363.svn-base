/*
 * Project Name:LSHWebSite
 * File Name:PictureCheckCodeController.java
 * Package Name:com.lsh.site.controller.site
 * Date:2014年5月5日下午5:09:41
 * Copyright (c) 2014, MYLSH All Rights Reserved.
 *
 */
package com.lsh.site.controller.site;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

/**
 * ClassName: PictureCheckCodeController <br/>
 * Description: 验证码
 * date: 2014年5月5日 下午5:09:41 <br/>
 * 
 * @author DuanJie
 * @version 1.0
 * @since JDK 1.6
 */
@Controller("pictureCheckCodeController")
public class PictureCheckCodeController extends BaseController {

	// 定义可选择的字符
	public static final char[] CHARS = { '2', '3', '4', '5', '6', '7', '8',
			'9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K', 'L', 'M',
			'N', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };
	static Random random = new Random();

	public String getRandomString() {
		StringBuffer buffer = new StringBuffer();
		for (int i = 0; i < 6; i++) { // 生成六个字符
			buffer.append(CHARS[random.nextInt(CHARS.length)]);
		}
		return buffer.toString();
	}

	public static Color getRandomColor() { // 得到随机颜色
		return new Color(random.nextInt(255), random.nextInt(255),
				random.nextInt(255));
	}

	public static Color getReverseColor(Color c) { // 得到颜色的反色
		return new Color(255 - c.getRed(), 255 - c.getGreen(),
				255 - c.getBlue());
	}

	@RequestMapping(value = "pictureCheckCode", method = RequestMethod.GET)
	public void createCode(HttpServletRequest request,
			HttpServletResponse response) {
		response.setContentType("image/jpeg"); // 设置输出类型
		String randomString = getRandomString();
		// 将getSession（）设置为true，当会话不存在是返回null
		request.getSession(true).setAttribute("pictureCheckCode", randomString);
		// 设置图片的宽、高
		int width = 100;
		int height = 30;
		Color bcolor = getRandomColor(); // 前景色
		Color fcolor = getReverseColor(getRandomColor()); // 设置背景色
		// 创建一个彩色图片
		BufferedImage bimage = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_BGR);
		// 创建绘图对象
		Graphics2D g = bimage.createGraphics();
		// 字体样式为宋体,加粗，20磅
		g.setFont(new Font("宋体", Font.BOLD, 20));
		// 先画出背景色
		g.setColor(bcolor);
		g.fillRect(0, 0, width, height);
		// 再画出前景色
		g.setColor(fcolor);
		// 绘制随机字符
		g.drawString(randomString, 20, 22);
		// 画出干扰点
		for (int i = 0, n = random.nextInt(100); i < n; i++) {
			g.drawRect(random.nextInt(width), random.nextInt(height), 1, 1);
		}
		ServletOutputStream outstream;
		try {
			outstream = response.getOutputStream();
			JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(outstream);
			encoder.encode(bimage);
			outstream.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

}
