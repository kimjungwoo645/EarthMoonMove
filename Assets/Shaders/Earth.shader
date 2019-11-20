Shader "JW/Earth"
{
    Properties
    {
        _Earth ("Albedo (RGB)", 2D) = "white" {}
        _EarthNight ("Albedo (RGB)", 2D) = "white" {}
        _TexValue ("TextureValue", Range(0,1)) = 0
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }

        CGPROGRAM

        #pragma surface surf Standard fullforwardshadows

        sampler2D _Earth;
        sampler2D _EarthNight;

        float _TexValue;

        struct Input
        {
            float2 uv_Earth;
            float2 uv_EarthNight;
        };
        void surf (Input IN, inout SurfaceOutputStandard o)
        {
            fixed4 e = tex2D (_Earth, IN.uv_Earth);
            fixed4 en = tex2D (_EarthNight, IN.uv_EarthNight);

            o.Albedo = lerp(e.rgb, en.rgb, _TexValue);
            o.Alpha = e.a;
        }
        ENDCG
    }
    FallBack "Diffuse"
}
