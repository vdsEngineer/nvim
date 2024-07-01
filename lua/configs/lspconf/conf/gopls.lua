local util = require('lspconfig/util')
local lastRootPath = nil
local gopath = os.getenv("GOPATH")
if gopath == nil then
    gopath = ""
end
local gopathmod = gopath .. '/pkg/mod'

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

return {
    cmd = { 'gopls' },
    filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
    capabilities = capabilities,
    root_dir = function(fname)
        local fullpath = vim.fn.expand(fname, ':p')
        if string.find(fullpath, gopathmod) and lastRootPath ~= nil then
            return lastRootPath
        end
        lastRootPath = util.root_pattern("go.mod", ".git")(fname)
        return lastRootPath
    end,
    single_file_support = true,
    docs = {
        description = [[
        https://github.com/golang/tools/tree/master/gopls

        Google's lsp server for golang.
        ]],
        default_config = {
            root_dir = [[root_pattern("go.work", "go.mod", ".git")]],
        },
    },
}
