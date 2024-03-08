---@meta
--[[
  Generated with github.com/astrochili/defold-annotations
  Defold 1.6.4

  Image API documentation

  Functions for creating image objects.
--]]

---@diagnostic disable: lowercase-global
---@diagnostic disable: missing-return
---@diagnostic disable: duplicate-doc-param
---@diagnostic disable: duplicate-set-field

---@class image
image = {}

---luminance image type
image.TYPE_LUMINANCE = nil

---luminance image type
image.TYPE_LUMINANCE_ALPHA = nil

---RGB image type
image.TYPE_RGB = nil

---RGBA image type
image.TYPE_RGBA = nil

---Load image (PNG or JPEG) from buffer.
---@param buffer string image data buffer
---@param premult boolean|nil optional flag if alpha should be premultiplied. Defaults to false
---@return table|nil image object or nil if loading fails. The object is a table with the following fields:
---
---number width: image width
---number height: image height
---constant type: image type
---image.TYPE_RGB
---image.TYPE_RGBA
---image.TYPE_LUMINANCE
---image.TYPE_LUMINANCE_ALPHA
---
---
---string buffer: the raw image data
---
function image.load(buffer, premult) end

---Load image (PNG or JPEG) from a string buffer.
---@param buffer string image data buffer
---@param premult boolean|nil optional flag if alpha should be premultiplied. Defaults to false
---@return table|nil image object or nil if loading fails. The object is a table with the following fields:
---
---number width: image width
---number height: image height
---constant type: image type
---image.TYPE_RGB
---image.TYPE_RGBA
---image.TYPE_LUMINANCE
---image.TYPE_LUMINANCE_ALPHA
---
---
---buffer buffer: the script buffer that holds the decompressed image data. See buffer.create how to use the buffer.
---
function image.load_buffer(buffer, premult) end

return image