<anychart>
	<settings>
		<animation enabled="True"/>
	</settings>
  <charts>
    <chart plot_type="CategorizedVertical">
   <chart_settings>
				<title enabled="true">
					<text>${chart_title}</text>
				</title>
				<legend enabled="true" position="Bottom" align="Spread"
					ignore_auto_item="true">
					<format>{@Icon} {@Name}{numDecimals:0}</format>
					<template></template>
					<title enabled="true">
						<text>${legend_title}</text>
					</title>
					<columns_separator enabled="false" />
					<background>
						<inside_margin left="10" right="10" />
					</background>
					<items>
						<item source="Series" />
					</items>
				</legend>
				<axes>
					<y_axis>
						<title>
							<text>${yName}</text>
						</title>
						<labels align="Inside">
							<format>{@Value}{numDecimals:0}</format>
						</labels>
					</y_axis>
					<x_axis>
						<title>
							<text>${xName}</text>
						</title>
					</x_axis>
				</axes>
			</chart_settings>  	
    	<data_plot_settings default_series_type="Line">
    		<line_series>
    			<marker_settings>
    					<marker size="8"/>
    					<states>
    						<hover>
    							<marker size="12"/>
    						</hover>
    					</states>
    			</marker_settings>
    			<tooltip_settings enabled="True">
    			<format>
               <![CDATA[{@Name}  {%SeriesName}
                                          数量：{@YValue}{numDecimals: ${precision}}
              ]]>
</format>
    			</tooltip_settings>
    		</line_series>
    	</data_plot_settings>
    	   
	    <data>
                <series name="公交运营" palette="Default">
				     <#list list as l >
				          <point name="${l.name}" y="${l.num}"/>        
                      </#list>
				</series>
                <series name="轨道交通" palette="Default">
				     <#list list as l >
				          <point name="${l.name}" y="${l.num1}"/>        
                      </#list>
				</series>		
		        <series name="长途客运" palette="Default">
				     <#list list as l >
				          <point name="${l.name}" y="${l.num2}"/>        
                      </#list>
				</series>
		        <series name="出租车" palette="Default">
				     <#list list as l >
				          <point name="${l.name}" y="${l.num3}"/>        
                      </#list>
				</series>
		        <series name="自行车" palette="Default">
				     <#list list as l >
				          <point name="${l.name}" y="${l.num4}"/>        
                      </#list>
				</series>											
		        <series name="其他" palette="Default">
				     <#list list as l >
				          <point name="${l.name}" y="${l.num5}"/>        
                      </#list>
				</series>	
	    </data>
    </chart>
  </charts>
</anychart>
		