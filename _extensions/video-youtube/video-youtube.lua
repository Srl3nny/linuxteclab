return {
  ["video-youtube"] = function(args, kwargs, meta)

    local yt = meta.youtube
    if yt == nil then
      return pandoc.Null()
    end

    local url = pandoc.utils.stringify(yt)
    if url == "" then
      return pandoc.Null()
    end

    local text = "👉 Assista no YouTube"
    local link = pandoc.Link(text, url)

    -- bloco bonitinho (classe pra CSS)
    return pandoc.Div({
      pandoc.Para({
        pandoc.Strong(pandoc.Str("Este conteúdo também está disponível em vídeo:")),
      }),
      pandoc.Para({ link })
    }, pandoc.Attr("", {"youtube-box"}))
  end
}
