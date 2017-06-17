The while statement modifier normally checks the condition before entering the loop. But if the while statement modifier is on a begin ... end statement, then it loops at least once. Same with the until statement modifier.

<table class="wikitable">
<tbody><tr>
<th> while
</th>
<th> until
</th></tr>
<tr>
<td> <pre class="ruby highlighted_source">val = <span class="nu0">0</span><br><span class="kw1">begin</span><br>   val <span class="sy0">+</span>= <span class="nu0">1</span><br>   <span class="kw3">puts</span> val<br><span class="kw1">end</span> <span class="kw1">while</span> val <span class="sy0">%</span> <span class="nu0">6</span>&nbsp;!= <span class="nu0">0</span></pre>
</td>
<td> <pre class="ruby highlighted_source">val = <span class="nu0">0</span><br><span class="kw1">begin</span><br>   val <span class="sy0">+</span>= <span class="nu0">1</span><br>   <span class="kw3">puts</span> val<br><span class="kw1">end</span> <span class="kw1">until</span> val <span class="sy0">%</span> <span class="nu0">6</span> == <span class="nu0">0</span></pre>
</td></tr></tbody></table>

During November 2005, Yukihiro Matsumoto, the creator of Ruby, [regretted this loop feature and suggested using Kernel#loop.](http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-core/6745)

<table class="wikitable">
<tbody><tr>
<th> break unless
</th>
<th> break if
</th></tr>
<tr>
<td> <pre class="ruby highlighted_source">val = <span class="nu0">0</span><br><span class="kw3">loop</span> <span class="kw1">do</span><br>   val <span class="sy0">+</span>= <span class="nu0">1</span><br>   <span class="kw3">puts</span> val<br>   <span class="kw1">break</span> <span class="kw1">unless</span> val <span class="sy0">%</span>6&nbsp;!= <span class="nu0">0</span><br><span class="kw1">end</span></pre>
</td>
<td> <pre class="ruby highlighted_source">val = <span class="nu0">0</span><br><span class="kw3">loop</span> <span class="kw1">do</span><br>   val <span class="sy0">+</span>= <span class="nu0">1</span><br>   <span class="kw3">puts</span> val<br>   <span class="kw1">break</span> <span class="kw1">if</span> val <span class="sy0">%</span>6 == <span class="nu0">0</span><br><span class="kw1">end</span></pre>
</td></tr></tbody></table>

All four of these examples print the numbers 1, 2, 3, 4, 5, 6.