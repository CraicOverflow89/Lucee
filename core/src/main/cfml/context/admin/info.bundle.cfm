<cfscript>
	hasAccess=true;
	stText.info.bundles.subject="Bundle";
	stText.info.bundles.version="Version";
	stText.info.bundles.vendor="Vendor";
	stText.info.bundles.type="Type";
	stText.info.bundles.state="State";
	stText.info.bundles.states.active="active";
	stText.info.bundles.states.installed="loaded";
	stText.info.bundles.states.notinstalled="not loaded";
	stText.info.bundles.states.resolved="resolved";
	stText.info.bundles.usedBy="Used by";
	stText.info.bundles.isFragment="Fragment?";
	stText.info.bundles.fileName="File name";
	stText.info.bundles.path="Path";
	stText.info.bundles.manifestHeaders="Manifest Headers";
	stText.bundles.introText="These are all the OSGi bundles (jars) available locally.";
</cfscript>


<cfset csss={
	active:"background-color:##cfc",
	installed:"background-color:##ffc",
	notinstalled:"background-color:##fcc",
	resolved:"background-color:##ff9"

	}>


<cfparam name="url.action2" default="list">
<cfparam name="form.mainAction" default="none">
<cfparam name="form.subAction" default="none">	

<cfswitch expression="#url.action2#">
	<cfcase value="list"><cfinclude template="info.bundle.list.cfm"/></cfcase>
	<cfcase value="create"><cfinclude template="info.bundle.create.cfm"/></cfcase>
</cfswitch>