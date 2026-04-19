---
layout: page
title: Thoughts
permalink: /thoughts/
---

<div class="thoughts-list">
{% assign sorted_thoughts = site.thoughts | sort: "date" | reverse %}
{% for thought in sorted_thoughts %}
<details class="thought-entry">
  <summary>
    <span class="thought-title">{{ thought.title }}</span>
    <span class="thought-date">{{ thought.date | date: "%Y-%m-%d" }}</span>
  </summary>
  <div class="thought-content">
    {{ thought.content }}
  </div>
</details>
{% endfor %}
</div>
