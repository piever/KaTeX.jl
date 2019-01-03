using KaTeX
using Test

@testset "deps" begin
    for fn in ["katex.min.js", "katex.min.css", "auto-render.min.js"]
        @test isfile(joinpath(@__DIR__, "..", "assets", fn))
    end
end

const katexfonts = [
    "KaTeX_AMS-Regular",
    "KaTeX_Caligraphic-Bold",
    "KaTeX_Caligraphic-Regular",
    "KaTeX_Fraktur-Bold",
    "KaTeX_Fraktur-Regular",
    "KaTeX_Main-Regular",
    "KaTeX_Main-Bold",
    "KaTeX_Main-Italic",
    "KaTeX_Main-BoldItalic",
    "KaTeX_Math-Italic",
    "KaTeX_Math-BoldItalic",
    "KaTeX_SansSerif-Bold",
    "KaTeX_SansSerif-Italic",
    "KaTeX_SansSerif-Regular",
    "KaTeX_Script-Regular",
    "KaTeX_Size1-Regular",
    "KaTeX_Size2-Regular",
    "KaTeX_Size3-Regular",
    "KaTeX_Size4-Regular",
    "KaTeX_Typewriter-Regular",
]

const exts =["ttf", "woff", "woff2"]

@testset "katexfonts" begin
    for font in katexfonts
        for ext in exts
            @test isfile(joinpath(@__DIR__, "..", "assets", "fonts", join([font, ext], '.')))
        end
    end
end
