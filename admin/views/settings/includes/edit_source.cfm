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
	<div id="msTabs-ImageSource">
		<h3>#local.rc.mmRBF.key('sourceimage')#</h3>
		<ul class="form">
			<fieldset>
			<legend>#local.rc.mmRBF.key('sourceimage')#</legend>
			<p>#local.rc.mmRBF.key('sourceimage','tip')#</p>
			<li>
				<label for="settingbean_imagewidth">#local.rc.mmRBF.key('imagewidth')#</label>
				<input class="text tiny" type="text" name="settingbean_imagewidth" id="settingbean_imagewidth" value="#form.settingbean_imagewidth#" size="10" maxlength="10" required="true" validate="numeric" message="#local.rc.mmRBF.key('imagewidth','validate')#"/>
			</li>
			<li>
				<label for="settingbean_imageheight">#local.rc.mmRBF.key('imageheight')#</label>
				<input class="text tiny" type="text" name="settingbean_imageheight" id="settingbean_imageheight" value="#form.settingbean_imageheight#" size="10" maxlength="10" required="true" validate="numeric" message="#local.rc.mmRBF.key('imageheight','validate')#"/>
			</li>
			<li>
				<label for="settingbean_imageresizetype">#local.rc.mmRBF.key('resize')#</label>
				<select name="settingbean_imageresizetype">
					<cfloop list="crop,resize,cropresize" index="local.item">
						<option value="#local.item#"<cfif local.item eq form.settingbean_imageresizetype> SELECTED</cfif>>#local.rc.mmRBF.key(local.item)#</option>
					</cfloop>
				</select>
			</li>
			<li>
				<label for="settingbean_imageaspecttype">#local.rc.mmRBF.key('aspect')#</label>
				<select name="settingbean_imageaspecttype">
					<option value="">#local.rc.mmRBF.key('none')#</option>
					<cfloop list="AspectXY,AspectX,AspectY,MaxAspectXY" index="local.item">
						<option value="#local.item#"<cfif local.item eq form.settingbean_imageaspecttype> SELECTED</cfif>>#local.rc.mmRBF.key(local.item)#</option>
					</cfloop>
				</select>
			</li>
			<li>
				<label for="settingbean_imagecroptype">#local.rc.mmRBF.key('crop')#</label>
				<select name="settingbean_imagecroptype">
					<option value="">#local.rc.mmRBF.key('none')#</option>
					<cfloop list="CenterXY,CenterX,CenteryY,BestXY" index="local.item">
						<option value="#local.item#"<cfif local.item eq form.settingbean_imagecroptype> SELECTED</cfif>>#local.rc.mmRBF.key(local.item)#</option>
					</cfloop>
				</select>
			</li>
			<li>
				<label for="settingbean_imagequalitytype">#local.rc.mmRBF.key('quality')#</label>
				<select name="settingbean_imagequalitytype">
					<option value="">#local.rc.mmRBF.key('none')#</option>
					<cfloop list="highestQuality,mediumQuality,lowQuality,highestPerformance" index="local.item">
						<option value="#local.item#"<cfif local.item eq form.settingbean_imagequalitytype> SELECTED</cfif>>#local.rc.mmRBF.key(local.item)#</option>
					</cfloop>
				</select>
			</li>
			</fieldset>
		</ul>
	</div>
</cfoutput>