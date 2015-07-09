
<!-- news-container start -->
	<div id="news-container">
  	<h2>
			<a href="${base}news"
				title="News"
			>
				News
			</a>
		</h2>

	<!-- 	<?php
      //print_r($news);
			for($i = 0; $i < sizeof($news); $i ++)
			{
				?> 
				
				after news-item 
				<?php if($i + 1 == sizeof($news)) {echo 'last';} ?>
				-->
					<div class="news-item ">
						<h3>News Title<span> &nbsp;-&nbsp; 18/06/2015</span></h3>
						<!-- 
							echo $this->lib_bbcode->to_html($news[$i]["description"], 160);
						 
						  . $news[$i]["news_id"]; ?>  instead of news title <?php echo $news[$i]["title"]; ?>-->
						<p><a href="${base}news/view/1" title="Read Full Article: News Title">Read Full Article</a></p>
					</div>

         
              <div class="divider"></div>
			
		

		<!--<div class="divider"></div>-->

    <!--<div id="news-options">
			<p><a href="<?php //echo base_url() . "news"; ?>" title="Browse All News Items">Browse All News Items</a></p>
			<p><a href="#" title="Subscribe To News Feed">Subscribe To News Feed</a></p>
			<p><a href="#" title="Customise News Feed">Customise News Feed</a></p>
		</div>
		<div class="clear-both"></div>!-->
	</div>
<!-- news-container end -->
