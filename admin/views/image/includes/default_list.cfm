<!---

This file is part of the Meld Gallery application.

Meld Gallery is licensed under the GPL 2.0 license
Copyright (C) 2010 2011 Meld Solutions Inc. http://www.meldsolutions.com/

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation, version 2 of that license..

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

--->
<cfsilent>
	<cfset local.rc = rc>
</cfsilent>
<cfoutput>
<script type="text/javascript">
Shadowbox.init({
	modal: false
});

jQuery(document).ready(function(){
	jQuery(".sb").live( 'click', function(e) {
		Shadowbox.modal = false;
		Shadowbox.open({
	        content:    $(this).attr('href'),
	        type:     	"img",
			modal: 		false,
			click:		function() { Shadowbox.close() }
			
	    });
		e.preventDefault();
	});
});
</script>
<div class="section clearfix">
	<table class="ms-datatable display hideTable" id="ms-datatable"
		data-url="#rc.$.globalConfig().getContext()#/plugins/#local.rc.pluginConfig.getDirectory()#/com/meldsolutions/meldgallery/remote/meldgalleryRemoteAOP.cfc?method=getImageList&data&returnFormat=json">
		<thead class="headers">
		<tr>
			<th class="nosort nopad ui-state-active" data-class="nopad">&nbsp;</th>
			<th class="midWidth ui-state-active">#local.rc.mmRBF.key('name')#</th>
			<th class="midWidth ui-state-active">#local.rc.mmRBF.key('tags')#</th>
			<th class="nosort minWidth ui-state-active" data-class="center">#local.rc.mmRBF.key('status')#</th>
			<th class="nosort ui-state-active" data-class="center"></th>
		</tr>
		</thead>
		<thead class="search" id="ms-datatable_search">
		<tr>
			<th>
			<ul class='table-buttons two'>
				<li><span title="#local.rc.mmRBF.key('clearfilter')#" id="clearFilter" class="sb-button ui-state-active"><span class="ui-icon ui-icon-arrowreturnthick-1-w"></span></span></li>
				<li><span title="#local.rc.mmRBF.key('setfilter')#" id="setFilter" class="sb-button ui-state-active"><span class="ui-icon ui-icon-check"></span></span></li>
			</ul>
			</th>
			<th><input class="searchable text full" type="text" id="flt_name" data-column="name"></th>
			<th><input class="searchable text full" type="text" id="flt_any" data-column="any"></th>
			<th>
			<select class="select" name="isactive" id="flt_isactive" data-column="isactive">
				<option value="1">#local.rc.mmRBF.key('active1')#</option>
				<option value="0">#local.rc.mmRBF.key('active0')#</option>
			</select>
			</th>
			<th></th>
		</tr>
		</thead>
		<tbody>
	</table>
</div>
</cfoutput>