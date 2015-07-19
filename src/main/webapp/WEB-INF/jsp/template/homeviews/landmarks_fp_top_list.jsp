

<div class="column left">
	<!-- title start -->

	<div class="title">
		<h1>
			<a href="${base}${url_path}" title="View All Landmarks">
				Night Lifes </a>
		</h1>
		<a href="" title="View All "> Browse All </a>
	</div>

	<!-- title end -->
	<div class='error'></div>
	<c:forEach items="${NIGHTLIFE}" var="nightlife" >
		<!-- item start -->
		<div class="item">
			<div class="content">
				<div class="image">
					<a href="" title="Find Out More About"> <img src="${nightlife.imgPath}"
						alt="Image of " width="80" height="80" />
					</a>
				</div>
			</div>
			<div class="text">
				<h2>
					<a href="" title="Find Out More About "></a>
				</h2>
				<p>
					<a href="" title="Find Out More About ">
						<c:out value="${nightlife.largeDescription}" /> </a>
				</p>
				<div class="clear-both"></div>
				<div class="button">
					<a href="" title="Find Out More About "></a>
				</div>
			</div>
			<div class="clear-both"></div>
		</div>
		<!-- item end -->
	</c:forEach>

</div>
<!-- top list items start -->
<div class="column right">
	<!-- title start -->

	<div class="title">
		<h1>
			<a href="${base}${url_path}" title="View All Kids">
				Kids </a>
		</h1>
		<a href="" title="View All "> Browse All </a>
	</div>

	<!-- title end -->
	<div class='error'></div>
	<!-- item start -->
	<c:forEach items="${KIDS}" var="kid" >
	
	<div class="item">
		<div class="content">
			<div class="image">
				<a href="" title="Find Out More About"> <img src="${kid.imgPath}"
					alt="Image of " width="80" height="80" />
				</a>
			</div>
		</div>
		<div class="text">
			<h2>
				<a href="" title="Find Out More About "></a>
			</h2>
			<p>
				<a href="" title="Find Out More About "><c:out value="${kid.name}" /></a>
			</p>
			<div class="clear-both"></div>
			<div class="button">
				<a href="" title="Find Out More About "></a>
			</div>
		</div>
		<div class="clear-both"></div>
	</div>
	<!-- item end -->
	</c:forEach>