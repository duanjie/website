<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
<div class="top back-to-top" style="display: none;">
		<a href="#top" style="text-align: center;">Topo</a>
	</div>
	<div id="contact" class="foot">
		<div>
			<footer>
				<%-- <section class="title-footer">
					<h1>一个始终不变的承诺————设计经典</h1>
				</section>
				<section class="info-contact">
					<div class="where">
						<span class="title">地址：</span>

						<address>
							<p>
								<a href="#" target="_blank"> <span
									class="address">${info.companyAddress}</span> <span class="locality">四川-绵阳</span>
								</a>
							</p>
						</address>
					</div>

					<div class="how">
						<span class="title">联系我们</span> <span class="email"> <a href="#"target="_blank">${info.emailAddress }</a>
						</span> <span class="phone"> <a href="callto:+558233177586"
							target="_blank">${info.phone }</a> <a href="callto:+558230215586"
							target="_blank">15281672434</a>
						</span>
					</div>

					<div class="footer-social">
						<div>
							<span class="desc-social">网站建设</span>
						</div>
					</div>
				</section> --%>
				${articleFooter.content }
			</footer>
		</div>
	</div>
	<div style="display: none"></div>
	<script type="text/javascript" src="public/js/devicepx-jetpack.js"></script>
	<script type="text/javascript" src="public/js/gprofiles.js"></script>
	<script type="text/javascript">
		/* <![CDATA[ */
		var WPGroHo = {
			"my_hash" : ""
		};
		/* ]]> */
	</script>
	<script type="text/javascript" src="public/js/wpgroho.js"></script>
	<script type="text/javascript" src="public/js/main.min.js"></script>
	
</body>
</html>