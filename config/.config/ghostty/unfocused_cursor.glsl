void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 uv = fragCoord / iResolution.xy;
    vec4 color = texture(iChannel0, uv);

    // iFocus is 0 when the window/split is unfocused, 1 when focused
    if (iFocus == 0) {
        // iCurrentCursor: xy = top-left position, zw = width and height
        vec2 cPos = iCurrentCursor.xy;
        vec2 cSize = iCurrentCursor.zw;

        // Check if current pixel is inside the unfocused hollow cursor cell
        bool inCellX = fragCoord.x >= cPos.x && fragCoord.x <= cPos.x + cSize.x;
        bool inCellY = fragCoord.y <= cPos.y && fragCoord.y >= cPos.y - cSize.y;

        if (inCellX && inCellY) {
            // Erase the hollow box outline by replacing cursor-colored pixels with background
            float colorDiff = distance(color.rgb, iCurrentCursorColor.rgb);
            if (colorDiff < 0.25) {
                color = vec4(iBackgroundColor.rgb, 0.9); // Matches your background-opacity = 0.9
            }

            // OPTIONAL: Draw a thin 1.5px bar on the left edge instead of leaving it blank
            // Delete the next 3 lines if you want the unfocused cursor completely invisible
            if (fragCoord.x >= cPos.x && fragCoord.x <= cPos.x + 1.5) {
                color = vec4(iCurrentCursorColor.rgb, 1.0);
            }
        }
    }

    fragColor = color;
}
