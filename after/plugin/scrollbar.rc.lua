local status, scroll = pcall(require, 'scrollbar')
if (not status) then return end

scroll.setup {
 handle = {
    highlight = "Normal"
  }
}
