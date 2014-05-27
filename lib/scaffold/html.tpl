<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>${project.name|raw}</title>
    <!-- if: ${loaderConfig} -->
    <script>
    require.config({
        baseUrl: '${loaderBaseUrl|raw}',
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

</body>
</html>
