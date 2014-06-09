<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.util.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
        <div style="height:15px;">
        </div> 
			<div class="wrapper">
				<div class="controls">
					<ul>
						<li class="filter active" data-filter="all">所有</li>
						<li class="filter" data-filter="identidade-visual">综合服务</li>
						<li class="filter" data-filter="ilustracao">生活家居</li>
						<li class="filter" data-filter="print">工业品</li>
						<li class="filter" data-filter="video">纺织品</li>
						<li class="filter" data-filter="web">原材料</li>
					</ul>
				</div>
				<ul id="Grid" class="lista-portfolio">
					<li class="mix identidade-visual ilustracao web mix_all" style="display: inline-block; opacity: 1;">
						<a href="#"> 
							<img width="370" height="214" src="./index/image/1.jpg" class="attachment-medium wp-post-image boders" alt="装修家装可视化版"/>
							<div class="mask">
								<span class="job-name">装修家装可视化版 </span>
							</div>
						</a>
					</li>
					<li class="mix identidade-visual print mix_all" style="display: inline-block; opacity: 1;">
						<a href="#"> 
							<img width="370" height="214" src="./index/image/2.jpg" class="attachment-medium wp-post-image boders" alt="电子电气可视化版"/>
							<div class="mask">
								<span class="job-name">电子电气可视化版</span>
							</div>
					</a></li>
					<li class="mix identidade-visual ilustracao print video web mix_all" style="display: inline-block; opacity: 1;">
						<a href="#">
							<img width="370" height="214" src="./index/image/3.jpg" class="attachment-medium wp-post-image boders" alt="婚纱摄影可视化版"/>
							<div class="mask">
								<span class="job-name">婚纱摄影可视化版</span>
							</div>
						</a>
					</li>
					<li class="mix identidade-visual print mix_all " style="display: inline-block; opacity: 1;">
						<a href="#">
							<img width="370" height="214" src="./index/image/4.jpg" class="attachment-medium wp-post-image boders" alt="IT科技可视化版"/>
							<div class="mask">
								<span class="job-name">IT科技可视化版</span>
							</div>
						</a>
					</li>
					<li class="mix web mix_all" style="display: inline-block; opacity: 1;">
						<a href="#"> 
							<img width="370" height="214" src="./index/image/5.jpg" class="attachment-medium wp-post-image boders" alt="建筑建材可视化版 jz559"/>
							<div class="mask">
								<span class="job-name">建筑建材可视化版</span>
							</div>
						</a>
					</li>
					<li class="mix web mix_all" style="display: inline-block; opacity: 1;">
						<a href="#"> 
							<img width="370" height="214" src="./index/image/6.jpg" class="attachment-medium wp-post-image boders" alt="婚纱摄影平板版  mpad_1"/>
							<div class="mask">
								<span class="job-name">婚纱摄影平板版</span>
							</div>
						</a>
					</li>
					<li class="mix web mix_all" style="display: inline-block; opacity: 1;">
						<a href="#"> 
							<img width="370" height="214" src="./index/image/7.jpg" class="attachment-medium wp-post-image boders" alt="IT科技可视化版（it638）"/>
							<div class="mask">
								<span class="job-name">IT科技可视化版</span>
							</div>
						</a>
					</li>
					<li class="mix identidade-visual print mix_all" style="display: inline-block; opacity: 1;">
						<a href="#"> 
						<img width="370" height="214" src="./index/image/8.jpg" class="attachment-medium wp-post-image boders" alt="茶叶茶馆可视化版 cy558"/>
							<div class="mask">
								<span class="job-name">茶叶茶馆可视化版</span>
							</div>
						</a>
					</li>
					<li class="mix ilustracao video mix_all" style="display: inline-block; opacity: 1;">
						<a href="#"> 
						<img width="370" height="214" src="./index/image/9.jpg" class="attachment-medium wp-post-image boders" alt="家装设计可视化版 sj635"/>
							<div class="mask">
								<span class="job-name">家装设计可视化版</span>
							</div>
						</a>
					</li>
					<li class="gap"></li>
				</ul>
			</div>