#**
 * 用于定义公共宏
 *#

#set($webRoot=$!link.getContextPath())

#**
 * 引入静态资源
 *#
#macro (includeStatic)
<!-- for: ${styles} as ${style} -->
<link rel="stylesheet" href="$!{webRoot}/${style|raw}" />
<!-- /for -->
<!-- for: ${scripts} as ${script} -->
<script src="$!{webRoot}/${script|raw}"></script>
<!-- /for -->
<script>
var ${project.code|raw} = {
    root: '$!{webRoot}'
};
</script>
#end

#macro (footer)
<div class="footer">
    © 2013 Baidu
</div>
#end
