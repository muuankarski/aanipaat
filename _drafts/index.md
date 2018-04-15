---
title: Hiihtosuunnistuksen SM-keskimatka ja Lumi-Toukola -viesti 25.-26.2.2017 Vetelissä
layout: page
tagline: this is tag
---

{% include JB/setup %}


<div class="row">


<div class="col-lg-9">
  <div class="bs-component">

Hiihtosuunnistuksen keskimatkan suomenmestaruuskilpailut sekä Lumi-Toukola -viesti järjestetään Vetelissä <a href="https://vetu.sporttisaitti.com/">Vetelin Urheilijoiden</a> ja <a href="http://www.alajarvensuunnistajat.fi/">Alajärven Ankkureiden</a> toimesta. 

<br>

<b>Tervetuloa kisasivuille!</b>

<h3>Uutisia</h3>

<ul>
    {% for post in site.posts offset: 0 limit: 20 %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ site.baseurl }}/{{ post.url }}">{{ post.title }}</a></li>
        <!-- {{ post.content | strip_html | truncatewords:6}}<br>
            <a href="{{ site.baseurl }}/{{ post.url }}">Lue lisää...</a><br><br> -->
    {% endfor %}
</ul>


  </div>
</div>

  <div class="col-lg-3">
    <div class="bs-component">

<a href="{{ site.baseurl }}/kuvat/hiihtosuunnistusLOGO2017.png"><img src="{{ site.baseurl }}/kuvat/hiihtosuunnistusLOGO2017.png" width="100"></a>

<br>
<br>

<a href="http://www.alajarvensuunnistajat.fi/"><img src="{{ site.baseurl }}/kuvat/alajarven_ankkurit_logo.jpg" width="100"></a>

<br>
<br>

<a href="https://vetu.sporttisaitti.com/"><img src="{{ site.baseurl }}/kuvat/vetu.png" width="100"></a>


    </div>
  </div>

</div>  






