{% if not (theme.duoshuo and theme.duoshuo.shortname) and not theme.duoshuo_shortname %}
  {% if theme.disqus.enable %}

    {% if page.comments %}
      <script type="text/javascript">
        if (disqus_config) {
          var disqus_config = function () {
            this.page.url = '{{ page.permalink }}';
            this.page.identifier = '{{ page.path }}';
            this.page.title = '{{ page.title| addslashes }}';
          };
          if (window.DISQUS) {
            $('.disqus-loading').remove();
            window.DISQUS.reset({
              reload: true,
              config: function () {
                this.page.url = '{{ page.permalink }}';
                this.page.identifier = '{{ page.path }}';
                this.page.title = '{{ page.title| addslashes }}';
              }
            });
          }
        }
        else {
          var disqus_config = function () {
            this.page.url = '{{ page.permalink }}';
            this.page.identifier = '{{ page.path }}';
            this.page.title = '{{ page.title| addslashes }}';
          };
          var d = document, s = d.createElement('script');
          s.src = 'https://{{theme.disqus.shortname}}.disqus.com/embed.js';
          s.setAttribute('data-timestamp', '' + +new Date());
          (d.head || d.body).appendChild(s);
        }
      </script>
    {% endif %}

  {% endif %}
{% endif %}
