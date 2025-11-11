using Microsoft.Extensions.Configuration;
using System;
using System.IO;

public static class ConfigHelper
{
    private static IConfiguration _configuration;

    static ConfigHelper()
    {
        var builder = new ConfigurationBuilder()
            .SetBasePath(AppDomain.CurrentDomain.BaseDirectory)
            .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true);

        _configuration = builder.Build();
    }

    public static IConfiguration Configuration => _configuration;
}