<!DOCTYPE html>
#parse("/tcom/utils.macro.vm")
<html>
<head>
    <meta charset="utf-8" />
    <title>{{{project.name}}}</title>
    #includeStatic()
    {{#loaderConfig}}
    <script>
    require.config({
        baseUrl: '$!{webRoot}/{{{loaderBaseUrl}}}',
        paths: { {{#forEach loaderPaths}}
            {{{key}}}: '{{{value}}}'{{^last}},{{/last}}
        {{/forEach}} },
        packages: [ {{#loaderPackages}}
            {
                name: '{{{name}}}',
                location: '{{{location}}}',
                main: '{{{main}}}'
            }{{^last}},{{/last}}
        {{/loaderPackages}}]
    });
    </script>
    {{/loaderConfig}}
</head>
<body>
    #footer()
<script>
</script>
</body>
</html>
