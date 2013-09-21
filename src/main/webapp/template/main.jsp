<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="homepage_text">
    This is the home page of FreeEed Search application.
</div>

<div class="homepage_text">
    How it works
    Processing is organized by the Hadoop framework.  
    The input data is staged by zipping it in archives of a set size. 
    Then in processing each file is read from the archive, assigned a unique ID,
    and processed with Tika, which extracts text and metadata. 
    Metadata, text, and the file itself are delivered as processed results.
    The current and future building blocks of the system are HDFS, Hadoop, HBase, 
    Tika, Lucene, Solr, Mahout, Hive,  and Pig.
    SHMsoft™ provides a blog with current news and information on the happenings of the week.  You can see the SHMsoft blog 
    <a href="http://shmsoft.blogspot.com/" target="_blank">here</a>
    <br/>
    You can also may visit <a href="http://www.freeeed.org" target="_blank">FreeEed main page</a>
</div>

<div class="delimiter3">
</div>