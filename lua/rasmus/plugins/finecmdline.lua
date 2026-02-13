local finecmdline_setup, finecmdline = pcall(require, "fine-cmdline")
if not finecmdline_setup then
    return
end

finecmdline.setup()