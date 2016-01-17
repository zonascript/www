{if $pages}
<div class="box informationMenu" style="border-left: 1px solid #ebebeb; border-right: 1px solid #ebebeb;">
	<div class="title">
		<div>Shipping Info</div>
	</div>

	<div class="content">
		<ul>
		{foreach from=$pages item=page}
			<li id="static_{$page.ID}" class="aboutUsMenu"><a href="{pageUrl data=$page}">{$page.title_lang}</a></li>
			{if $page.children}
				<ul>
					{foreach from=$page.children item=page}
						<li id="static_{$page.ID}" class="aboutUsMenuLi"><a href="{pageUrl data=$page}">{$page.title_lang}</a></li>
					{/foreach}
				</ul>
			{/if}
		{/foreach}
		</ul>
	</div>
</div>
{/if}