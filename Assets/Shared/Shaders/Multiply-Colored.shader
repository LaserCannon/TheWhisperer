// Simplified Multiply Particle shader. Differences from regular Multiply Particle one:
// - no Smooth particle support
// - no AlphaTest
// - no ColorMask

Shader "Custom/Multiply-Colored" {




Properties {
		_MainTex ("Texture",2D) = "white" {}
		_Color ("Color", Color) = (1,1,1,1)
	}
	SubShader {
		Tags { "Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent" }
		Blend Zero SrcColor
		Lighting Off
		
		CGPROGRAM
		#pragma surface surf Lambert alpha


		half4 _Color;
		sampler2D _MainTex;
			
		struct Input {
			half2 uv_MainTex;
		};

		void surf (Input IN, inout SurfaceOutput o) {
			half4 target = tex2D(_MainTex,IN.uv_MainTex);
			o.Emission = lerp(half4(0,0,0,0),target,_Color.a);
			o.Alpha = _Color.a*target.a;
		}
		ENDCG
	} 


//Properties {
//	_MainTex ("Particle Texture", 2D) = "white" {}
//	_Color ("Color", Color) = (1,1,1,0)
//}
//
//SubShader {
//	Pass {
//
//		Tags { "Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent" }
//		Blend Zero SrcColor
//		Cull Back Lighting Off
//		
//		CGPROGRAM
//		#pragma surface surf Lambert alpha
//		//#pragma vertex vert
//		//#pragma fragment frag alpha
//		
//		//#include "UnityCG.cginc"
//		
//		float4 _Color;
//		sampler2D _MainTex;
//		
//		struct Input {
//			half2 uv_MainTex;
//		};
//		
//		void surf (Input IN, inout SurfaceOutput o) {
//			o.Emission = lerp(tex2D(_MainTex,IN.uv_MainTex),half4(1,1,1,0),1-_Color.a);
//		}
//	
//	//	struct v2f {
//	//	    float4  pos : SV_POSITION;
//	//	    float2  uv : TEXCOORD0; 
//	//	};
//	//	
//	//	float4 _MainTex_ST;
//	//	
//	//	v2f vert (appdata_base v)
//	//	{
//	//	    v2f o;
//	//	    o.pos = mul (UNITY_MATRIX_MVP, v.vertex);
//	//	    o.uv = TRANSFORM_TEX (v.texcoord, _MainTex);
//	//	    return o;
//	//	}
//	//	
//	//	half4 frag (v2f i) : COLOR
//	//	{
//	//	    half4 texcol = tex2D (_MainTex, i.uv);
//	//	    return lerp(texcol,half4(1,1,1,0),1-_Color.a);
//	//	}
//		ENDCG
//	}
//}
	
}
