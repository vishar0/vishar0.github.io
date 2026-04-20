---
layout: page
title: Thoughts
permalink: /thoughts/
---

<div class="thoughts-count">{{ site.thoughts | size }} thoughts</div>

<div class="thoughts-list">
{% assign sorted_thoughts = site.thoughts | sort: "date" | reverse %}
{% for thought in sorted_thoughts %}
<details class="thought-entry" id="{{ thought.slug }}">
  <summary>
    <span class="thought-title">{{ thought.title }}</span>
    <a class="thought-date" href="{{ thought.url | relative_url }}">{{ thought.date | date: "%Y-%m-%d" }}</a>
  </summary>
  <div class="thought-content">
    {{ thought.content }}
  </div>
</details>
{% endfor %}
</div>

<script>
  (function() {
    function openTargetThought() {
      var hash = window.location.hash.slice(1);
      if (!hash) return;
      var el = document.getElementById(hash);
      if (el && el.tagName === 'DETAILS') {
        el.open = true;
        setTimeout(function() {
          el.scrollIntoView({ block: 'start' });
        }, 0);
      }
    }
    window.addEventListener('DOMContentLoaded', openTargetThought);
    window.addEventListener('hashchange', openTargetThought);
  })();
</script>
