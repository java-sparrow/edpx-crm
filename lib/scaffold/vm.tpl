<!DOCTYPE html>
#parse("/tcom/utils.macro.vm")
<html>
<head>
    <meta charset="utf-8" />
    <title>${project.name|raw}</title>
    #includeStatic()
    <!-- if: ${loaderConfig} -->
    <script>
    require.config({
        baseUrl: '$!{webRoot}/${loaderBaseUrl|raw}',
        paths: { <!-- for: ${loaderPaths} as ${path} -->
            '${key|raw}': '${value|raw}'<!-- if: !${path.last} -->,<!-- /if -->
        <!-- /for --> },
        packages: [ <!-- for: ${loaderPackages} as ${pkg} -->
            {
                name: '${pkg.name|raw}',
                location: '${pkg.location|raw}',
                main: '${pkg.main|raw}'
            }<!-- if: !${pkg.last} -->,<!-- /if -->
        <!-- /for -->]
    });
    </script>
    <!-- /if -->
</head>
<body>
    #footer()
<script>
    <!-- if: ${entryCode} -->
    require(['${entryCode.moduleId|raw}'], function (main) {
        // 模块入口
        main.enter();
    });
    <!-- /if -->
</script>
</body>
</html>
