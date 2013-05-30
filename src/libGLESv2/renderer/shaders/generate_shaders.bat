@ECHO OFF
REM
REM Copyright (c) 2012 The ANGLE Project Authors. All rights reserved.
REM Use of this source code is governed by a BSD-style license that can be
REM found in the LICENSE file.
REM

PATH %PATH%;%DXSDK_DIR%\Utilities\bin\x86

fxc /E standardvs /T vs_2_0 /Fh compiled/standardvs.h Blit.vs
fxc /E flipyvs /T vs_2_0 /Fh compiled/flipyvs.h Blit.vs
fxc /E passthroughps /T ps_2_0 /Fh compiled/passthroughps.h Blit.ps
fxc /E luminanceps /T ps_2_0 /Fh compiled/luminanceps.h Blit.ps
fxc /E componentmaskps /T ps_2_0 /Fh compiled/componentmaskps.h Blit.ps

fxc /E VS_Passthrough2D /T vs_4_0 /Fh compiled/passthrough2d11vs.h Passthrough2D11.hlsl
fxc /E PS_PassthroughRGBA2D /T ps_4_0 /Fh compiled/passthroughrgba2d11ps.h Passthrough2D11.hlsl
fxc /E PS_PassthroughRGB2D /T ps_4_0 /Fh compiled/passthroughrgb2d11ps.h Passthrough2D11.hlsl
fxc /E PS_PassthroughLum2D /T ps_4_0 /Fh compiled/passthroughlum2d11ps.h Passthrough2D11.hlsl
fxc /E PS_PassthroughLumAlpha2D /T ps_4_0 /Fh compiled/passthroughlumalpha2d11ps.h Passthrough2D11.hlsl

fxc /E VS_Passthrough3D /T vs_4_0 /Fh compiled/passthrough3d11vs.h Passthrough3D11.hlsl
fxc /E GS_Passthrough3D /T gs_4_0 /Fh compiled/passthrough3d11gs.h Passthrough3D11.hlsl
fxc /E PS_PassthroughRGBA3D /T ps_4_0 /Fh compiled/passthroughrgba3d11ps.h Passthrough3D11.hlsl
fxc /E PS_PassthroughRGB3D /T ps_4_0 /Fh compiled/passthroughrgb3d11ps.h Passthrough3D11.hlsl
fxc /E PS_PassthroughLum3D /T ps_4_0 /Fh compiled/passthroughlum3d11ps.h Passthrough3D11.hlsl
fxc /E PS_PassthroughLumAlpha3D /T ps_4_0 /Fh compiled/passthroughlumalpha3d11ps.h Passthrough3D11.hlsl

fxc /E VS_Clear /T vs_4_0 /Fh compiled/clear11vs.h Clear11.hlsl
fxc /E PS_ClearSingle /T ps_4_0 /Fh compiled/clearsingle11ps.h Clear11.hlsl
fxc /E PS_ClearMultiple /T ps_4_0 /Fh compiled/clearmultiple11ps.h Clear11.hlsl