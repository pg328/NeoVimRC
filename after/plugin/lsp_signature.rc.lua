local status, sig = pcall(require, 'lsp_signature')
if (not status) then return end

sig.setup({
  bind = true, -- This is mandatory, otherwise border config won't get registered.
  handler_opts = {
    border = "rounded"
  }
})

