<!-- news-container start -->
<div id="news-container">
	<h2>
		<a href="${base}news" title="Browse News"
			>News
		</a>
	</h2>

	<c:forEach items="${NEWS}" var="news">

		<c:out value="${userForm.address}" />

		<div class="news-item">
			<h3>
				<c:out value="${news.title}" />
				<span> &nbsp;-&nbsp; <c:out value="${news.date}" /></span>
			</h3>
			<c:out value="${fn:substring(news.description, 0, 160)}"/>
			
			<p>
				<a href="${base}news/view/1"
					title="Read Full Article: <c:out value="${news.title}"/>">Read
					Full Article</a>
			</p>
		</div>

		<div class="divider"></div>
	</c:forEach>
</div>
<!-- news-container end -->
