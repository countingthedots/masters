-- Keep each source file flat while giving the assembled thesis a TOC hierarchy.
local function subsection_number(content)
  return pandoc.utils.stringify(content):match("^(%d+%.%d+)%.%s")
end

function Header(header)
  if header.level == 1 and subsection_number(header.content) then
    header.level = 2
  end
  return header
end

function Para(paragraph)
  if #paragraph.content == 1 and paragraph.content[1].t == "Strong" then
    local content = paragraph.content[1].content
    local number = subsection_number(content)
    if number then
      return pandoc.Header(2, content, pandoc.Attr("podrozdzial-" .. number:gsub("%.", "-")))
    end
  end
end
