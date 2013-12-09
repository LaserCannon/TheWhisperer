Shader "Custom/ToonShade" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		CGPROGRAM
		#pragma surface surf Toon

		sampler2D _MainTex;

		struct Input {
			float2 uv_MainTex;
		};
		
		half4 LightingToon ( SurfaceOutput s, half3 lightDir, half atten)
		{
			half NdotL = dot(s.Normal,lightDir);
			//half toonNdotL = clamp(round(NdotL*3),0,2)/2;//ceil(NdotL*3)/3;
			half toonNdotL = round((NdotL+1)*atten/2);
		//	half light = (toonNdotL * atten * 2);
			//light = ceil(light*2)/2;
			half4 c;
		//	c.rgb = light * s.Albedo;
			c.rgb = lerp(3*s.Albedo/4,s.Albedo,toonNdotL);
			c.a = s.Alpha;
			return c;
		}

		void surf (Input IN, inout SurfaceOutput o) {
			half4 c = tex2D (_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	} 
	FallBack "Diffuse"
}
