Pod::Spec.new do |s|
  s.name         = "ffmpeg-ios-static-libs"
  s.version      = "2.8.3"
  s.summary      = "precompiled static library of ffmpeg"
  s.homepage     = "https://github.com/hearther/ffmpeg-ios-static-libs.git"
  s.license      = 'LGPLv2.1'
  #s.author       = { "Chris Ballinger" => "chris@openwatch.net" }
  s.platform     = :ios, '8.0'
  s.source       = { :git => "https://github.com/hearther/FFmpegWrapper.git"}
  s.requires_arc = false
  
  s.default_subspec = 'precompiled'
  s.subspec 'precompiled' do |ss|
    ss.source_files        = 'include/**/*.h'
    ss.public_header_files = 'include/**/*.h'
    ss.header_mappings_dir = 'include'
    ss.vendored_libraries  = 'lib/*.a'
    ss.libraries = 'x264', 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'
  end  
  
end
