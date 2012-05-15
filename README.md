##Pagination UI for Flex
基于Flex SDK 4.6.x + [page4as3lib](https://github.com/kenshin/as-pagination)的分页组件

### 项目主页：  
[http://www.k-zone.cn/project/flexpagination.html](http://www.k-zone.cn/project/flexpagination.html)

### Demo预览地址：  
[http://www.k-zone.cn/pagination/](http://www.k-zone.cn/pagination/)

### 分页逻辑：  
[https://github.com/kenshin/as-pagination](https://github.com/kenshin/as-pagination)  

### 使用方法：  
引入：  
<pre>
add page4as3lib-1.0.swc to libs folder
</pre>
或者：  
<pre>
add com\ksria\flex\pagination\ to src folder
</pre>

使用（AS3方式）：  
<pre>
import com.ksria.flex.pagination.PaginationComp;
import com.ksria.flex.pagination.event.PaginationEvent;

private function pageTurningHandler( event : PaginationEvent ) : void {
    trace( '当前为：' + event.page + '页' );
}

private function createPagination() : void {
    
	var page : PaginationComp = new PaginationComp();
	
	page.page     = 1;
	page.total    = 307;
	page.pagesize = 6;
	page.offset   = 2;
	page.length   = 8;
	
	page.backLabel     = "<<";
	page.previousLabel = "<";
	page.nextLabel     = ">";
	page.forwardLabel  = ">>";
	
	page.pageTurnVisible = true;
	page.pageCtrlVisible = true;
	page.advModel        = true;
	page.pageCmbVisible  = true;
	
	page.addEventListener( PaginationEvent.PAGE_TURNING, pageTurningHandler );
	
	xxxxx.addElement( page );
}
</pre>  

使用（Flex方式）：
<pre>
&lt;s:Application 
    xmlns:fx="http://ns.adobe.com/mxml/2009"
    xmlns:s="library://ns.adobe.com/flex/spark"
    xmlns:mx="library://ns.adobe.com/flex/mx" 
    xmlns:pagination="http://pagination.ksria.com" 
&gt;

&lt;pagination:PaginationComp 
    pagesize="6" offset="2" length="8" 
	backLabel="后滚" previousLabel="后退" nextLabel="前进" forwardLabel="前滚" 
	pageTurnVisible="false" pageCtrlVisible="false" advModel="false" pageCmbVisible="true"
&gt;

&lt;/pagination:PaginationComp&gt;
</pre>

Paginaton参数：  
<pre>
//分页属性
page.page     = 1;           //当前页
page.total    = 307;         //分页总数
page.pagesize = 6;           //每页显示的数据
page.offset   = 2;           //偏移量
page.length   = 8;           //分页的长度
//标签属性
page.backLabel     = "<<";   //后滚按钮的显示标签
page.previousLabel = "<";    //后退按钮的显示标签
page.nextLabel     = ">";    //前进按钮的显示标签
page.forwardLabel  = ">>";   //前滚按钮的显示标签
//控制条属性
page.pageTurnVisible = true; //是否显示前滚/后滚按钮
page.pageCtrlVisible = true; //是否显示前进/后退按钮
page.advModel        = true; //是否显示高级模式
page.pageCmbVisible  = true; //是否显示下拉列表
</pre>

## 更新日志：
version 1.0 [2011-01-08]
* 基于Flex SDK 4.6.x
* 基于[page4as3lib](https://github.com/kenshin/as-pagination)
* 适合任意Flash Player 10.x+
* 符合UI/UE设计思想，高度定制化

## 联系方式：
* 博客：[k-zone.cn](http://www.k-zone.cn/zblog)
* 微博：[新浪微博](http://weibo.com/23784148)
* 联络：kenshin[AT]ksria.com

## 版权和许可：
Copyright 2012 [k-zone.cn](http://www.k-zone.cn/zblog)  
Licensed under MIT or GPL Version 2 licenses
