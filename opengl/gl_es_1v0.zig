//
// This code file is licenced under any of Public Domain, WTFPL or CC0.
// There are no restrictions in the use of this file.
//

//
// Generation parameters:
// API:        GL_VERSION_ES_CM_1_0
// Profile:    core
// Extensions:
//

//
// This file was generated with the following command line:
// generator /home/runner/work/zig-opengl/zig-opengl/bin/Debug/net6.0/generator.dll OpenGL-Registry/xml/gl.xml exports/gl_es_1v0.zig GL_VERSION_ES_CM_1_0
//

const std = @import("std");
const builtin = @import("builtin");
const log = std.log.scoped(.OpenGL);

pub const FunctionPointer: type = *align(@alignOf(fn (u32) callconv(.C) u32)) const anyopaque;

pub const GLenum = c_uint;
pub const GLboolean = u8;
pub const GLbitfield = c_uint;
pub const GLbyte = i8;
pub const GLubyte = u8;
pub const GLshort = i16;
pub const GLushort = u16;
pub const GLint = c_int;
pub const GLuint = c_uint;
pub const GLclampx = i32;
pub const GLsizei = c_int;
pub const GLfloat = f32;
pub const GLclampf = f32;
pub const GLdouble = f64;
pub const GLclampd = f64;
pub const GLeglClientBufferEXT = void;
pub const GLeglImageOES = void;
pub const GLchar = u8;
pub const GLcharARB = u8;

pub const GLhandleARB = if (builtin.os.tag == .macos) *anyopaque else c_uint;

pub const GLhalf = u16;
pub const GLhalfARB = u16;
pub const GLfixed = i32;
pub const GLintptr = usize;
pub const GLintptrARB = usize;
pub const GLsizeiptr = isize;
pub const GLsizeiptrARB = isize;
pub const GLint64 = i64;
pub const GLint64EXT = i64;
pub const GLuint64 = u64;
pub const GLuint64EXT = u64;

pub const GLsync = *opaque {};

pub const _cl_context = opaque {};
pub const _cl_event = opaque {};

pub const GLDEBUGPROC = *const fn (source: GLenum, _type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*anyopaque) callconv(.C) void;
pub const GLDEBUGPROCARB = *const fn (source: GLenum, _type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*anyopaque) callconv(.C) void;
pub const GLDEBUGPROCKHR = *const fn (source: GLenum, _type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*anyopaque) callconv(.C) void;

pub const GLDEBUGPROCAMD = *const fn (id: GLuint, category: GLenum, severity: GLenum, length: GLsizei, message: [*:0]const u8, userParam: ?*anyopaque) callconv(.C) void;

pub const GLhalfNV = u16;
pub const GLvdpauSurfaceNV = GLintptr;
pub const GLVULKANPROCNV = *const fn () callconv(.C) void;

pub const VERSION_ES_CL_1_0 = 1;
pub const VERSION_ES_CM_1_1 = 1;
pub const VERSION_ES_CL_1_1 = 1;
pub const DEPTH_BUFFER_BIT = 0x00000100;
pub const STENCIL_BUFFER_BIT = 0x00000400;
pub const COLOR_BUFFER_BIT = 0x00004000;
pub const FALSE = 0;
pub const TRUE = 1;
pub const POINTS = 0x0000;
pub const LINES = 0x0001;
pub const LINE_LOOP = 0x0002;
pub const LINE_STRIP = 0x0003;
pub const TRIANGLES = 0x0004;
pub const TRIANGLE_STRIP = 0x0005;
pub const TRIANGLE_FAN = 0x0006;
pub const NEVER = 0x0200;
pub const LESS = 0x0201;
pub const EQUAL = 0x0202;
pub const LEQUAL = 0x0203;
pub const GREATER = 0x0204;
pub const NOTEQUAL = 0x0205;
pub const GEQUAL = 0x0206;
pub const ALWAYS = 0x0207;
pub const ZERO = 0;
pub const ONE = 1;
pub const SRC_COLOR = 0x0300;
pub const ONE_MINUS_SRC_COLOR = 0x0301;
pub const SRC_ALPHA = 0x0302;
pub const ONE_MINUS_SRC_ALPHA = 0x0303;
pub const DST_ALPHA = 0x0304;
pub const ONE_MINUS_DST_ALPHA = 0x0305;
pub const DST_COLOR = 0x0306;
pub const ONE_MINUS_DST_COLOR = 0x0307;
pub const SRC_ALPHA_SATURATE = 0x0308;
pub const CLIP_PLANE0 = 0x3000;
pub const CLIP_PLANE1 = 0x3001;
pub const CLIP_PLANE2 = 0x3002;
pub const CLIP_PLANE3 = 0x3003;
pub const CLIP_PLANE4 = 0x3004;
pub const CLIP_PLANE5 = 0x3005;
pub const FRONT = 0x0404;
pub const BACK = 0x0405;
pub const FRONT_AND_BACK = 0x0408;
pub const FOG = 0x0B60;
pub const LIGHTING = 0x0B50;
pub const TEXTURE_2D = 0x0DE1;
pub const CULL_FACE = 0x0B44;
pub const ALPHA_TEST = 0x0BC0;
pub const BLEND = 0x0BE2;
pub const COLOR_LOGIC_OP = 0x0BF2;
pub const DITHER = 0x0BD0;
pub const STENCIL_TEST = 0x0B90;
pub const DEPTH_TEST = 0x0B71;
pub const POINT_SMOOTH = 0x0B10;
pub const LINE_SMOOTH = 0x0B20;
pub const SCISSOR_TEST = 0x0C11;
pub const COLOR_MATERIAL = 0x0B57;
pub const NORMALIZE = 0x0BA1;
pub const RESCALE_NORMAL = 0x803A;
pub const VERTEX_ARRAY = 0x8074;
pub const NORMAL_ARRAY = 0x8075;
pub const COLOR_ARRAY = 0x8076;
pub const TEXTURE_COORD_ARRAY = 0x8078;
pub const MULTISAMPLE = 0x809D;
pub const SAMPLE_ALPHA_TO_COVERAGE = 0x809E;
pub const SAMPLE_ALPHA_TO_ONE = 0x809F;
pub const SAMPLE_COVERAGE = 0x80A0;
pub const NO_ERROR = 0;
pub const INVALID_ENUM = 0x0500;
pub const INVALID_VALUE = 0x0501;
pub const INVALID_OPERATION = 0x0502;
pub const STACK_OVERFLOW = 0x0503;
pub const STACK_UNDERFLOW = 0x0504;
pub const OUT_OF_MEMORY = 0x0505;
pub const EXP = 0x0800;
pub const EXP2 = 0x0801;
pub const FOG_DENSITY = 0x0B62;
pub const FOG_START = 0x0B63;
pub const FOG_END = 0x0B64;
pub const FOG_MODE = 0x0B65;
pub const FOG_COLOR = 0x0B66;
pub const CW = 0x0900;
pub const CCW = 0x0901;
pub const CURRENT_COLOR = 0x0B00;
pub const CURRENT_NORMAL = 0x0B02;
pub const CURRENT_TEXTURE_COORDS = 0x0B03;
pub const POINT_SIZE = 0x0B11;
pub const POINT_SIZE_MIN = 0x8126;
pub const POINT_SIZE_MAX = 0x8127;
pub const POINT_FADE_THRESHOLD_SIZE = 0x8128;
pub const POINT_DISTANCE_ATTENUATION = 0x8129;
pub const SMOOTH_POINT_SIZE_RANGE = 0x0B12;
pub const LINE_WIDTH = 0x0B21;
pub const SMOOTH_LINE_WIDTH_RANGE = 0x0B22;
pub const ALIASED_POINT_SIZE_RANGE = 0x846D;
pub const ALIASED_LINE_WIDTH_RANGE = 0x846E;
pub const CULL_FACE_MODE = 0x0B45;
pub const FRONT_FACE = 0x0B46;
pub const SHADE_MODEL = 0x0B54;
pub const DEPTH_RANGE = 0x0B70;
pub const DEPTH_WRITEMASK = 0x0B72;
pub const DEPTH_CLEAR_VALUE = 0x0B73;
pub const DEPTH_FUNC = 0x0B74;
pub const STENCIL_CLEAR_VALUE = 0x0B91;
pub const STENCIL_FUNC = 0x0B92;
pub const STENCIL_VALUE_MASK = 0x0B93;
pub const STENCIL_FAIL = 0x0B94;
pub const STENCIL_PASS_DEPTH_FAIL = 0x0B95;
pub const STENCIL_PASS_DEPTH_PASS = 0x0B96;
pub const STENCIL_REF = 0x0B97;
pub const STENCIL_WRITEMASK = 0x0B98;
pub const MATRIX_MODE = 0x0BA0;
pub const VIEWPORT = 0x0BA2;
pub const MODELVIEW_STACK_DEPTH = 0x0BA3;
pub const PROJECTION_STACK_DEPTH = 0x0BA4;
pub const TEXTURE_STACK_DEPTH = 0x0BA5;
pub const MODELVIEW_MATRIX = 0x0BA6;
pub const PROJECTION_MATRIX = 0x0BA7;
pub const TEXTURE_MATRIX = 0x0BA8;
pub const ALPHA_TEST_FUNC = 0x0BC1;
pub const ALPHA_TEST_REF = 0x0BC2;
pub const BLEND_DST = 0x0BE0;
pub const BLEND_SRC = 0x0BE1;
pub const LOGIC_OP_MODE = 0x0BF0;
pub const SCISSOR_BOX = 0x0C10;
pub const COLOR_CLEAR_VALUE = 0x0C22;
pub const COLOR_WRITEMASK = 0x0C23;
pub const MAX_LIGHTS = 0x0D31;
pub const MAX_CLIP_PLANES = 0x0D32;
pub const MAX_TEXTURE_SIZE = 0x0D33;
pub const MAX_MODELVIEW_STACK_DEPTH = 0x0D36;
pub const MAX_PROJECTION_STACK_DEPTH = 0x0D38;
pub const MAX_TEXTURE_STACK_DEPTH = 0x0D39;
pub const MAX_VIEWPORT_DIMS = 0x0D3A;
pub const MAX_TEXTURE_UNITS = 0x84E2;
pub const SUBPIXEL_BITS = 0x0D50;
pub const RED_BITS = 0x0D52;
pub const GREEN_BITS = 0x0D53;
pub const BLUE_BITS = 0x0D54;
pub const ALPHA_BITS = 0x0D55;
pub const DEPTH_BITS = 0x0D56;
pub const STENCIL_BITS = 0x0D57;
pub const POLYGON_OFFSET_UNITS = 0x2A00;
pub const POLYGON_OFFSET_FILL = 0x8037;
pub const POLYGON_OFFSET_FACTOR = 0x8038;
pub const TEXTURE_BINDING_2D = 0x8069;
pub const VERTEX_ARRAY_SIZE = 0x807A;
pub const VERTEX_ARRAY_TYPE = 0x807B;
pub const VERTEX_ARRAY_STRIDE = 0x807C;
pub const NORMAL_ARRAY_TYPE = 0x807E;
pub const NORMAL_ARRAY_STRIDE = 0x807F;
pub const COLOR_ARRAY_SIZE = 0x8081;
pub const COLOR_ARRAY_TYPE = 0x8082;
pub const COLOR_ARRAY_STRIDE = 0x8083;
pub const TEXTURE_COORD_ARRAY_SIZE = 0x8088;
pub const TEXTURE_COORD_ARRAY_TYPE = 0x8089;
pub const TEXTURE_COORD_ARRAY_STRIDE = 0x808A;
pub const VERTEX_ARRAY_POINTER = 0x808E;
pub const NORMAL_ARRAY_POINTER = 0x808F;
pub const COLOR_ARRAY_POINTER = 0x8090;
pub const TEXTURE_COORD_ARRAY_POINTER = 0x8092;
pub const SAMPLE_BUFFERS = 0x80A8;
pub const SAMPLES = 0x80A9;
pub const SAMPLE_COVERAGE_VALUE = 0x80AA;
pub const SAMPLE_COVERAGE_INVERT = 0x80AB;
pub const NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2;
pub const COMPRESSED_TEXTURE_FORMATS = 0x86A3;
pub const DONT_CARE = 0x1100;
pub const FASTEST = 0x1101;
pub const NICEST = 0x1102;
pub const PERSPECTIVE_CORRECTION_HINT = 0x0C50;
pub const POINT_SMOOTH_HINT = 0x0C51;
pub const LINE_SMOOTH_HINT = 0x0C52;
pub const FOG_HINT = 0x0C54;
pub const GENERATE_MIPMAP_HINT = 0x8192;
pub const LIGHT_MODEL_AMBIENT = 0x0B53;
pub const LIGHT_MODEL_TWO_SIDE = 0x0B52;
pub const AMBIENT = 0x1200;
pub const DIFFUSE = 0x1201;
pub const SPECULAR = 0x1202;
pub const POSITION = 0x1203;
pub const SPOT_DIRECTION = 0x1204;
pub const SPOT_EXPONENT = 0x1205;
pub const SPOT_CUTOFF = 0x1206;
pub const CONSTANT_ATTENUATION = 0x1207;
pub const LINEAR_ATTENUATION = 0x1208;
pub const QUADRATIC_ATTENUATION = 0x1209;
pub const BYTE = 0x1400;
pub const UNSIGNED_BYTE = 0x1401;
pub const SHORT = 0x1402;
pub const UNSIGNED_SHORT = 0x1403;
pub const FLOAT = 0x1406;
pub const FIXED = 0x140C;
pub const CLEAR = 0x1500;
pub const AND = 0x1501;
pub const AND_REVERSE = 0x1502;
pub const COPY = 0x1503;
pub const AND_INVERTED = 0x1504;
pub const NOOP = 0x1505;
pub const XOR = 0x1506;
pub const OR = 0x1507;
pub const NOR = 0x1508;
pub const EQUIV = 0x1509;
pub const INVERT = 0x150A;
pub const OR_REVERSE = 0x150B;
pub const COPY_INVERTED = 0x150C;
pub const OR_INVERTED = 0x150D;
pub const NAND = 0x150E;
pub const SET = 0x150F;
pub const EMISSION = 0x1600;
pub const SHININESS = 0x1601;
pub const AMBIENT_AND_DIFFUSE = 0x1602;
pub const MODELVIEW = 0x1700;
pub const PROJECTION = 0x1701;
pub const TEXTURE = 0x1702;
pub const ALPHA = 0x1906;
pub const RGB = 0x1907;
pub const RGBA = 0x1908;
pub const LUMINANCE = 0x1909;
pub const LUMINANCE_ALPHA = 0x190A;
pub const UNPACK_ALIGNMENT = 0x0CF5;
pub const PACK_ALIGNMENT = 0x0D05;
pub const UNSIGNED_SHORT_4_4_4_4 = 0x8033;
pub const UNSIGNED_SHORT_5_5_5_1 = 0x8034;
pub const UNSIGNED_SHORT_5_6_5 = 0x8363;
pub const FLAT = 0x1D00;
pub const SMOOTH = 0x1D01;
pub const KEEP = 0x1E00;
pub const REPLACE = 0x1E01;
pub const INCR = 0x1E02;
pub const DECR = 0x1E03;
pub const VENDOR = 0x1F00;
pub const RENDERER = 0x1F01;
pub const VERSION = 0x1F02;
pub const EXTENSIONS = 0x1F03;
pub const MODULATE = 0x2100;
pub const DECAL = 0x2101;
pub const ADD = 0x0104;
pub const TEXTURE_ENV_MODE = 0x2200;
pub const TEXTURE_ENV_COLOR = 0x2201;
pub const TEXTURE_ENV = 0x2300;
pub const NEAREST = 0x2600;
pub const LINEAR = 0x2601;
pub const NEAREST_MIPMAP_NEAREST = 0x2700;
pub const LINEAR_MIPMAP_NEAREST = 0x2701;
pub const NEAREST_MIPMAP_LINEAR = 0x2702;
pub const LINEAR_MIPMAP_LINEAR = 0x2703;
pub const TEXTURE_MAG_FILTER = 0x2800;
pub const TEXTURE_MIN_FILTER = 0x2801;
pub const TEXTURE_WRAP_S = 0x2802;
pub const TEXTURE_WRAP_T = 0x2803;
pub const GENERATE_MIPMAP = 0x8191;
pub const TEXTURE0 = 0x84C0;
pub const TEXTURE1 = 0x84C1;
pub const TEXTURE2 = 0x84C2;
pub const TEXTURE3 = 0x84C3;
pub const TEXTURE4 = 0x84C4;
pub const TEXTURE5 = 0x84C5;
pub const TEXTURE6 = 0x84C6;
pub const TEXTURE7 = 0x84C7;
pub const TEXTURE8 = 0x84C8;
pub const TEXTURE9 = 0x84C9;
pub const TEXTURE10 = 0x84CA;
pub const TEXTURE11 = 0x84CB;
pub const TEXTURE12 = 0x84CC;
pub const TEXTURE13 = 0x84CD;
pub const TEXTURE14 = 0x84CE;
pub const TEXTURE15 = 0x84CF;
pub const TEXTURE16 = 0x84D0;
pub const TEXTURE17 = 0x84D1;
pub const TEXTURE18 = 0x84D2;
pub const TEXTURE19 = 0x84D3;
pub const TEXTURE20 = 0x84D4;
pub const TEXTURE21 = 0x84D5;
pub const TEXTURE22 = 0x84D6;
pub const TEXTURE23 = 0x84D7;
pub const TEXTURE24 = 0x84D8;
pub const TEXTURE25 = 0x84D9;
pub const TEXTURE26 = 0x84DA;
pub const TEXTURE27 = 0x84DB;
pub const TEXTURE28 = 0x84DC;
pub const TEXTURE29 = 0x84DD;
pub const TEXTURE30 = 0x84DE;
pub const TEXTURE31 = 0x84DF;
pub const ACTIVE_TEXTURE = 0x84E0;
pub const CLIENT_ACTIVE_TEXTURE = 0x84E1;
pub const REPEAT = 0x2901;
pub const CLAMP_TO_EDGE = 0x812F;
pub const LIGHT0 = 0x4000;
pub const LIGHT1 = 0x4001;
pub const LIGHT2 = 0x4002;
pub const LIGHT3 = 0x4003;
pub const LIGHT4 = 0x4004;
pub const LIGHT5 = 0x4005;
pub const LIGHT6 = 0x4006;
pub const LIGHT7 = 0x4007;
pub const ARRAY_BUFFER = 0x8892;
pub const ELEMENT_ARRAY_BUFFER = 0x8893;
pub const ARRAY_BUFFER_BINDING = 0x8894;
pub const ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;
pub const VERTEX_ARRAY_BUFFER_BINDING = 0x8896;
pub const NORMAL_ARRAY_BUFFER_BINDING = 0x8897;
pub const COLOR_ARRAY_BUFFER_BINDING = 0x8898;
pub const TEXTURE_COORD_ARRAY_BUFFER_BINDING = 0x889A;
pub const STATIC_DRAW = 0x88E4;
pub const DYNAMIC_DRAW = 0x88E8;
pub const BUFFER_SIZE = 0x8764;
pub const BUFFER_USAGE = 0x8765;
pub const SUBTRACT = 0x84E7;
pub const COMBINE = 0x8570;
pub const COMBINE_RGB = 0x8571;
pub const COMBINE_ALPHA = 0x8572;
pub const RGB_SCALE = 0x8573;
pub const ADD_SIGNED = 0x8574;
pub const INTERPOLATE = 0x8575;
pub const CONSTANT = 0x8576;
pub const PRIMARY_COLOR = 0x8577;
pub const PREVIOUS = 0x8578;
pub const OPERAND0_RGB = 0x8590;
pub const OPERAND1_RGB = 0x8591;
pub const OPERAND2_RGB = 0x8592;
pub const OPERAND0_ALPHA = 0x8598;
pub const OPERAND1_ALPHA = 0x8599;
pub const OPERAND2_ALPHA = 0x859A;
pub const ALPHA_SCALE = 0x0D1C;
pub const SRC0_RGB = 0x8580;
pub const SRC1_RGB = 0x8581;
pub const SRC2_RGB = 0x8582;
pub const SRC0_ALPHA = 0x8588;
pub const SRC1_ALPHA = 0x8589;
pub const SRC2_ALPHA = 0x858A;
pub const DOT3_RGB = 0x86AE;
pub const DOT3_RGBA = 0x86AF;

pub fn alphaFunc(_func: GLenum, _ref: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glAlphaFunc, .{ _func, _ref });
}

pub fn clearColor(_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glClearColor, .{ _red, _green, _blue, _alpha });
}

pub fn clearDepthf(_d: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glClearDepthf, .{_d});
}

pub fn clipPlanef(_p: GLenum, _eqn: [*c]const GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glClipPlanef, .{ _p, _eqn });
}

pub fn color4f(_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glColor4f, .{ _red, _green, _blue, _alpha });
}

pub fn depthRangef(_n: GLfloat, _f: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glDepthRangef, .{ _n, _f });
}

pub fn fogf(_pname: GLenum, _param: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glFogf, .{ _pname, _param });
}

pub fn fogfv(_pname: GLenum, _params: [*c]const GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glFogfv, .{ _pname, _params });
}

pub fn frustumf(_l: GLfloat, _r: GLfloat, _b: GLfloat, _t: GLfloat, _n: GLfloat, _f: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glFrustumf, .{ _l, _r, _b, _t, _n, _f });
}

pub fn getClipPlanef(_plane: GLenum, _equation: [*c]GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGetClipPlanef, .{ _plane, _equation });
}

pub fn getFloatv(_pname: GLenum, _data: [*c]GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGetFloatv, .{ _pname, _data });
}

pub fn getLightfv(_light: GLenum, _pname: GLenum, _params: [*c]GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGetLightfv, .{ _light, _pname, _params });
}

pub fn getMaterialfv(_face: GLenum, _pname: GLenum, _params: [*c]GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGetMaterialfv, .{ _face, _pname, _params });
}

pub fn getTexEnvfv(_target: GLenum, _pname: GLenum, _params: [*c]GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGetTexEnvfv, .{ _target, _pname, _params });
}

pub fn getTexParameterfv(_target: GLenum, _pname: GLenum, _params: [*c]GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGetTexParameterfv, .{ _target, _pname, _params });
}

pub fn lightModelf(_pname: GLenum, _param: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glLightModelf, .{ _pname, _param });
}

pub fn lightModelfv(_pname: GLenum, _params: [*c]const GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glLightModelfv, .{ _pname, _params });
}

pub fn lightf(_light: GLenum, _pname: GLenum, _param: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glLightf, .{ _light, _pname, _param });
}

pub fn lightfv(_light: GLenum, _pname: GLenum, _params: [*c]const GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glLightfv, .{ _light, _pname, _params });
}

pub fn lineWidth(_width: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glLineWidth, .{_width});
}

pub fn loadMatrixf(_m: [*c]const GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glLoadMatrixf, .{_m});
}

pub fn materialf(_face: GLenum, _pname: GLenum, _param: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glMaterialf, .{ _face, _pname, _param });
}

pub fn materialfv(_face: GLenum, _pname: GLenum, _params: [*c]const GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glMaterialfv, .{ _face, _pname, _params });
}

pub fn multMatrixf(_m: [*c]const GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glMultMatrixf, .{_m});
}

pub fn multiTexCoord4f(_target: GLenum, _s: GLfloat, _t: GLfloat, _r: GLfloat, _q: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glMultiTexCoord4f, .{ _target, _s, _t, _r, _q });
}

pub fn normal3f(_nx: GLfloat, _ny: GLfloat, _nz: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glNormal3f, .{ _nx, _ny, _nz });
}

pub fn orthof(_l: GLfloat, _r: GLfloat, _b: GLfloat, _t: GLfloat, _n: GLfloat, _f: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glOrthof, .{ _l, _r, _b, _t, _n, _f });
}

pub fn pointParameterf(_pname: GLenum, _param: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glPointParameterf, .{ _pname, _param });
}

pub fn pointParameterfv(_pname: GLenum, _params: [*c]const GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glPointParameterfv, .{ _pname, _params });
}

pub fn pointSize(_size: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glPointSize, .{_size});
}

pub fn polygonOffset(_factor: GLfloat, _units: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glPolygonOffset, .{ _factor, _units });
}

pub fn rotatef(_angle: GLfloat, _x: GLfloat, _y: GLfloat, _z: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glRotatef, .{ _angle, _x, _y, _z });
}

pub fn scalef(_x: GLfloat, _y: GLfloat, _z: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glScalef, .{ _x, _y, _z });
}

pub fn texEnvf(_target: GLenum, _pname: GLenum, _param: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glTexEnvf, .{ _target, _pname, _param });
}

pub fn texEnvfv(_target: GLenum, _pname: GLenum, _params: [*c]const GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glTexEnvfv, .{ _target, _pname, _params });
}

pub fn texParameterf(_target: GLenum, _pname: GLenum, _param: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glTexParameterf, .{ _target, _pname, _param });
}

pub fn texParameterfv(_target: GLenum, _pname: GLenum, _params: [*c]const GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glTexParameterfv, .{ _target, _pname, _params });
}

pub fn translatef(_x: GLfloat, _y: GLfloat, _z: GLfloat) callconv(.C) void {
    return @call(.always_tail, function_pointers.glTranslatef, .{ _x, _y, _z });
}

pub fn activeTexture(_texture: GLenum) callconv(.C) void {
    return @call(.always_tail, function_pointers.glActiveTexture, .{_texture});
}

pub fn alphaFuncx(_func: GLenum, _ref: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glAlphaFuncx, .{ _func, _ref });
}

pub fn bindBuffer(_target: GLenum, _buffer: GLuint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glBindBuffer, .{ _target, _buffer });
}

pub fn bindTexture(_target: GLenum, _texture: GLuint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glBindTexture, .{ _target, _texture });
}

pub fn blendFunc(_sfactor: GLenum, _dfactor: GLenum) callconv(.C) void {
    return @call(.always_tail, function_pointers.glBlendFunc, .{ _sfactor, _dfactor });
}

pub fn bufferData(_target: GLenum, _size: GLsizeiptr, _data: ?*const anyopaque, _usage: GLenum) callconv(.C) void {
    return @call(.always_tail, function_pointers.glBufferData, .{ _target, _size, _data, _usage });
}

pub fn bufferSubData(_target: GLenum, _offset: GLintptr, _size: GLsizeiptr, _data: ?*const anyopaque) callconv(.C) void {
    return @call(.always_tail, function_pointers.glBufferSubData, .{ _target, _offset, _size, _data });
}

pub fn clear(_mask: GLbitfield) callconv(.C) void {
    return @call(.always_tail, function_pointers.glClear, .{_mask});
}

pub fn clearColorx(_red: GLfixed, _green: GLfixed, _blue: GLfixed, _alpha: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glClearColorx, .{ _red, _green, _blue, _alpha });
}

pub fn clearDepthx(_depth: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glClearDepthx, .{_depth});
}

pub fn clearStencil(_s: GLint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glClearStencil, .{_s});
}

pub fn clientActiveTexture(_texture: GLenum) callconv(.C) void {
    return @call(.always_tail, function_pointers.glClientActiveTexture, .{_texture});
}

pub fn clipPlanex(_plane: GLenum, _equation: [*c]const GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glClipPlanex, .{ _plane, _equation });
}

pub fn color4ub(_red: GLubyte, _green: GLubyte, _blue: GLubyte, _alpha: GLubyte) callconv(.C) void {
    return @call(.always_tail, function_pointers.glColor4ub, .{ _red, _green, _blue, _alpha });
}

pub fn color4x(_red: GLfixed, _green: GLfixed, _blue: GLfixed, _alpha: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glColor4x, .{ _red, _green, _blue, _alpha });
}

pub fn colorMask(_red: GLboolean, _green: GLboolean, _blue: GLboolean, _alpha: GLboolean) callconv(.C) void {
    return @call(.always_tail, function_pointers.glColorMask, .{ _red, _green, _blue, _alpha });
}

pub fn colorPointer(_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) callconv(.C) void {
    return @call(.always_tail, function_pointers.glColorPointer, .{ _size, _type, _stride, _pointer });
}

pub fn compressedTexImage2D(_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const anyopaque) callconv(.C) void {
    return @call(.always_tail, function_pointers.glCompressedTexImage2D, .{ _target, _level, _internalformat, _width, _height, _border, _imageSize, _data });
}

pub fn compressedTexSubImage2D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const anyopaque) callconv(.C) void {
    return @call(.always_tail, function_pointers.glCompressedTexSubImage2D, .{ _target, _level, _xoffset, _yoffset, _width, _height, _format, _imageSize, _data });
}

pub fn copyTexImage2D(_target: GLenum, _level: GLint, _internalformat: GLenum, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _border: GLint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glCopyTexImage2D, .{ _target, _level, _internalformat, _x, _y, _width, _height, _border });
}

pub fn copyTexSubImage2D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) callconv(.C) void {
    return @call(.always_tail, function_pointers.glCopyTexSubImage2D, .{ _target, _level, _xoffset, _yoffset, _x, _y, _width, _height });
}

pub fn cullFace(_mode: GLenum) callconv(.C) void {
    return @call(.always_tail, function_pointers.glCullFace, .{_mode});
}

pub fn deleteBuffers(_n: GLsizei, _buffers: [*c]const GLuint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glDeleteBuffers, .{ _n, _buffers });
}

pub fn deleteTextures(_n: GLsizei, _textures: [*c]const GLuint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glDeleteTextures, .{ _n, _textures });
}

pub fn depthFunc(_func: GLenum) callconv(.C) void {
    return @call(.always_tail, function_pointers.glDepthFunc, .{_func});
}

pub fn depthMask(_flag: GLboolean) callconv(.C) void {
    return @call(.always_tail, function_pointers.glDepthMask, .{_flag});
}

pub fn depthRangex(_n: GLfixed, _f: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glDepthRangex, .{ _n, _f });
}

pub fn disable(_cap: GLenum) callconv(.C) void {
    return @call(.always_tail, function_pointers.glDisable, .{_cap});
}

pub fn disableClientState(_array: GLenum) callconv(.C) void {
    return @call(.always_tail, function_pointers.glDisableClientState, .{_array});
}

pub fn drawArrays(_mode: GLenum, _first: GLint, _count: GLsizei) callconv(.C) void {
    return @call(.always_tail, function_pointers.glDrawArrays, .{ _mode, _first, _count });
}

pub fn drawElements(_mode: GLenum, _count: GLsizei, _type: GLenum, _indices: ?*const anyopaque) callconv(.C) void {
    return @call(.always_tail, function_pointers.glDrawElements, .{ _mode, _count, _type, _indices });
}

pub fn enable(_cap: GLenum) callconv(.C) void {
    return @call(.always_tail, function_pointers.glEnable, .{_cap});
}

pub fn enableClientState(_array: GLenum) callconv(.C) void {
    return @call(.always_tail, function_pointers.glEnableClientState, .{_array});
}

pub fn finish() callconv(.C) void {
    return @call(.always_tail, function_pointers.glFinish, .{});
}

pub fn flush() callconv(.C) void {
    return @call(.always_tail, function_pointers.glFlush, .{});
}

pub fn fogx(_pname: GLenum, _param: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glFogx, .{ _pname, _param });
}

pub fn fogxv(_pname: GLenum, _param: [*c]const GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glFogxv, .{ _pname, _param });
}

pub fn frontFace(_mode: GLenum) callconv(.C) void {
    return @call(.always_tail, function_pointers.glFrontFace, .{_mode});
}

pub fn frustumx(_l: GLfixed, _r: GLfixed, _b: GLfixed, _t: GLfixed, _n: GLfixed, _f: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glFrustumx, .{ _l, _r, _b, _t, _n, _f });
}

pub fn getBooleanv(_pname: GLenum, _data: [*c]GLboolean) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGetBooleanv, .{ _pname, _data });
}

pub fn getBufferParameteriv(_target: GLenum, _pname: GLenum, _params: [*c]GLint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGetBufferParameteriv, .{ _target, _pname, _params });
}

pub fn getClipPlanex(_plane: GLenum, _equation: [*c]GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGetClipPlanex, .{ _plane, _equation });
}

pub fn genBuffers(_n: GLsizei, _buffers: [*c]GLuint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGenBuffers, .{ _n, _buffers });
}

pub fn genTextures(_n: GLsizei, _textures: [*c]GLuint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGenTextures, .{ _n, _textures });
}

pub fn getError() callconv(.C) GLenum {
    return @call(.always_tail, function_pointers.glGetError, .{});
}

pub fn getFixedv(_pname: GLenum, _params: [*c]GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGetFixedv, .{ _pname, _params });
}

pub fn getIntegerv(_pname: GLenum, _data: [*c]GLint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGetIntegerv, .{ _pname, _data });
}

pub fn getLightxv(_light: GLenum, _pname: GLenum, _params: [*c]GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGetLightxv, .{ _light, _pname, _params });
}

pub fn getMaterialxv(_face: GLenum, _pname: GLenum, _params: [*c]GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGetMaterialxv, .{ _face, _pname, _params });
}

pub fn getPointerv(_pname: GLenum, _params: ?*?*anyopaque) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGetPointerv, .{ _pname, _params });
}

pub fn getString(_name: GLenum) callconv(.C) ?[*:0]const GLubyte {
    return @call(.always_tail, function_pointers.glGetString, .{_name});
}

pub fn getTexEnviv(_target: GLenum, _pname: GLenum, _params: [*c]GLint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGetTexEnviv, .{ _target, _pname, _params });
}

pub fn getTexEnvxv(_target: GLenum, _pname: GLenum, _params: [*c]GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGetTexEnvxv, .{ _target, _pname, _params });
}

pub fn getTexParameteriv(_target: GLenum, _pname: GLenum, _params: [*c]GLint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGetTexParameteriv, .{ _target, _pname, _params });
}

pub fn getTexParameterxv(_target: GLenum, _pname: GLenum, _params: [*c]GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glGetTexParameterxv, .{ _target, _pname, _params });
}

pub fn hint(_target: GLenum, _mode: GLenum) callconv(.C) void {
    return @call(.always_tail, function_pointers.glHint, .{ _target, _mode });
}

pub fn isBuffer(_buffer: GLuint) callconv(.C) GLboolean {
    return @call(.always_tail, function_pointers.glIsBuffer, .{_buffer});
}

pub fn isEnabled(_cap: GLenum) callconv(.C) GLboolean {
    return @call(.always_tail, function_pointers.glIsEnabled, .{_cap});
}

pub fn isTexture(_texture: GLuint) callconv(.C) GLboolean {
    return @call(.always_tail, function_pointers.glIsTexture, .{_texture});
}

pub fn lightModelx(_pname: GLenum, _param: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glLightModelx, .{ _pname, _param });
}

pub fn lightModelxv(_pname: GLenum, _param: [*c]const GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glLightModelxv, .{ _pname, _param });
}

pub fn lightx(_light: GLenum, _pname: GLenum, _param: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glLightx, .{ _light, _pname, _param });
}

pub fn lightxv(_light: GLenum, _pname: GLenum, _params: [*c]const GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glLightxv, .{ _light, _pname, _params });
}

pub fn lineWidthx(_width: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glLineWidthx, .{_width});
}

pub fn loadIdentity() callconv(.C) void {
    return @call(.always_tail, function_pointers.glLoadIdentity, .{});
}

pub fn loadMatrixx(_m: [*c]const GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glLoadMatrixx, .{_m});
}

pub fn logicOp(_opcode: GLenum) callconv(.C) void {
    return @call(.always_tail, function_pointers.glLogicOp, .{_opcode});
}

pub fn materialx(_face: GLenum, _pname: GLenum, _param: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glMaterialx, .{ _face, _pname, _param });
}

pub fn materialxv(_face: GLenum, _pname: GLenum, _param: [*c]const GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glMaterialxv, .{ _face, _pname, _param });
}

pub fn matrixMode(_mode: GLenum) callconv(.C) void {
    return @call(.always_tail, function_pointers.glMatrixMode, .{_mode});
}

pub fn multMatrixx(_m: [*c]const GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glMultMatrixx, .{_m});
}

pub fn multiTexCoord4x(_texture: GLenum, _s: GLfixed, _t: GLfixed, _r: GLfixed, _q: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glMultiTexCoord4x, .{ _texture, _s, _t, _r, _q });
}

pub fn normal3x(_nx: GLfixed, _ny: GLfixed, _nz: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glNormal3x, .{ _nx, _ny, _nz });
}

pub fn normalPointer(_type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) callconv(.C) void {
    return @call(.always_tail, function_pointers.glNormalPointer, .{ _type, _stride, _pointer });
}

pub fn orthox(_l: GLfixed, _r: GLfixed, _b: GLfixed, _t: GLfixed, _n: GLfixed, _f: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glOrthox, .{ _l, _r, _b, _t, _n, _f });
}

pub fn pixelStorei(_pname: GLenum, _param: GLint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glPixelStorei, .{ _pname, _param });
}

pub fn pointParameterx(_pname: GLenum, _param: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glPointParameterx, .{ _pname, _param });
}

pub fn pointParameterxv(_pname: GLenum, _params: [*c]const GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glPointParameterxv, .{ _pname, _params });
}

pub fn pointSizex(_size: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glPointSizex, .{_size});
}

pub fn polygonOffsetx(_factor: GLfixed, _units: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glPolygonOffsetx, .{ _factor, _units });
}

pub fn popMatrix() callconv(.C) void {
    return @call(.always_tail, function_pointers.glPopMatrix, .{});
}

pub fn pushMatrix() callconv(.C) void {
    return @call(.always_tail, function_pointers.glPushMatrix, .{});
}

pub fn readPixels(_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*anyopaque) callconv(.C) void {
    return @call(.always_tail, function_pointers.glReadPixels, .{ _x, _y, _width, _height, _format, _type, _pixels });
}

pub fn rotatex(_angle: GLfixed, _x: GLfixed, _y: GLfixed, _z: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glRotatex, .{ _angle, _x, _y, _z });
}

pub fn sampleCoverage(_value: GLfloat, _invert: GLboolean) callconv(.C) void {
    return @call(.always_tail, function_pointers.glSampleCoverage, .{ _value, _invert });
}

pub fn sampleCoveragex(_value: GLclampx, _invert: GLboolean) callconv(.C) void {
    return @call(.always_tail, function_pointers.glSampleCoveragex, .{ _value, _invert });
}

pub fn scalex(_x: GLfixed, _y: GLfixed, _z: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glScalex, .{ _x, _y, _z });
}

pub fn scissor(_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) callconv(.C) void {
    return @call(.always_tail, function_pointers.glScissor, .{ _x, _y, _width, _height });
}

pub fn shadeModel(_mode: GLenum) callconv(.C) void {
    return @call(.always_tail, function_pointers.glShadeModel, .{_mode});
}

pub fn stencilFunc(_func: GLenum, _ref: GLint, _mask: GLuint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glStencilFunc, .{ _func, _ref, _mask });
}

pub fn stencilMask(_mask: GLuint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glStencilMask, .{_mask});
}

pub fn stencilOp(_fail: GLenum, _zfail: GLenum, _zpass: GLenum) callconv(.C) void {
    return @call(.always_tail, function_pointers.glStencilOp, .{ _fail, _zfail, _zpass });
}

pub fn texCoordPointer(_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) callconv(.C) void {
    return @call(.always_tail, function_pointers.glTexCoordPointer, .{ _size, _type, _stride, _pointer });
}

pub fn texEnvi(_target: GLenum, _pname: GLenum, _param: GLint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glTexEnvi, .{ _target, _pname, _param });
}

pub fn texEnvx(_target: GLenum, _pname: GLenum, _param: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glTexEnvx, .{ _target, _pname, _param });
}

pub fn texEnviv(_target: GLenum, _pname: GLenum, _params: [*c]const GLint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glTexEnviv, .{ _target, _pname, _params });
}

pub fn texEnvxv(_target: GLenum, _pname: GLenum, _params: [*c]const GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glTexEnvxv, .{ _target, _pname, _params });
}

pub fn texImage2D(_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _height: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) callconv(.C) void {
    return @call(.always_tail, function_pointers.glTexImage2D, .{ _target, _level, _internalformat, _width, _height, _border, _format, _type, _pixels });
}

pub fn texParameteri(_target: GLenum, _pname: GLenum, _param: GLint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glTexParameteri, .{ _target, _pname, _param });
}

pub fn texParameterx(_target: GLenum, _pname: GLenum, _param: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glTexParameterx, .{ _target, _pname, _param });
}

pub fn texParameteriv(_target: GLenum, _pname: GLenum, _params: [*c]const GLint) callconv(.C) void {
    return @call(.always_tail, function_pointers.glTexParameteriv, .{ _target, _pname, _params });
}

pub fn texParameterxv(_target: GLenum, _pname: GLenum, _params: [*c]const GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glTexParameterxv, .{ _target, _pname, _params });
}

pub fn texSubImage2D(_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) callconv(.C) void {
    return @call(.always_tail, function_pointers.glTexSubImage2D, .{ _target, _level, _xoffset, _yoffset, _width, _height, _format, _type, _pixels });
}

pub fn translatex(_x: GLfixed, _y: GLfixed, _z: GLfixed) callconv(.C) void {
    return @call(.always_tail, function_pointers.glTranslatex, .{ _x, _y, _z });
}

pub fn vertexPointer(_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) callconv(.C) void {
    return @call(.always_tail, function_pointers.glVertexPointer, .{ _size, _type, _stride, _pointer });
}

pub fn viewport(_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) callconv(.C) void {
    return @call(.always_tail, function_pointers.glViewport, .{ _x, _y, _width, _height });
}
// Extensions:

// Loader API:
pub fn load(load_ctx: anytype, get_proc_address: fn (@TypeOf(load_ctx), [:0]const u8) ?FunctionPointer) !void {
    var success = true;
    if (get_proc_address(load_ctx, "glAlphaFunc")) |proc| {
        function_pointers.glAlphaFunc = @ptrCast(proc);
    } else {
        log.err("entry point glAlphaFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearColor")) |proc| {
        function_pointers.glClearColor = @ptrCast(proc);
    } else {
        log.err("entry point glClearColor not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearDepthf")) |proc| {
        function_pointers.glClearDepthf = @ptrCast(proc);
    } else {
        log.err("entry point glClearDepthf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClipPlanef")) |proc| {
        function_pointers.glClipPlanef = @ptrCast(proc);
    } else {
        log.err("entry point glClipPlanef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4f")) |proc| {
        function_pointers.glColor4f = @ptrCast(proc);
    } else {
        log.err("entry point glColor4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthRangef")) |proc| {
        function_pointers.glDepthRangef = @ptrCast(proc);
    } else {
        log.err("entry point glDepthRangef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogf")) |proc| {
        function_pointers.glFogf = @ptrCast(proc);
    } else {
        log.err("entry point glFogf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogfv")) |proc| {
        function_pointers.glFogfv = @ptrCast(proc);
    } else {
        log.err("entry point glFogfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFrustumf")) |proc| {
        function_pointers.glFrustumf = @ptrCast(proc);
    } else {
        log.err("entry point glFrustumf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetClipPlanef")) |proc| {
        function_pointers.glGetClipPlanef = @ptrCast(proc);
    } else {
        log.err("entry point glGetClipPlanef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetFloatv")) |proc| {
        function_pointers.glGetFloatv = @ptrCast(proc);
    } else {
        log.err("entry point glGetFloatv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetLightfv")) |proc| {
        function_pointers.glGetLightfv = @ptrCast(proc);
    } else {
        log.err("entry point glGetLightfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetMaterialfv")) |proc| {
        function_pointers.glGetMaterialfv = @ptrCast(proc);
    } else {
        log.err("entry point glGetMaterialfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexEnvfv")) |proc| {
        function_pointers.glGetTexEnvfv = @ptrCast(proc);
    } else {
        log.err("entry point glGetTexEnvfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameterfv")) |proc| {
        function_pointers.glGetTexParameterfv = @ptrCast(proc);
    } else {
        log.err("entry point glGetTexParameterfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightModelf")) |proc| {
        function_pointers.glLightModelf = @ptrCast(proc);
    } else {
        log.err("entry point glLightModelf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightModelfv")) |proc| {
        function_pointers.glLightModelfv = @ptrCast(proc);
    } else {
        log.err("entry point glLightModelfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightf")) |proc| {
        function_pointers.glLightf = @ptrCast(proc);
    } else {
        log.err("entry point glLightf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightfv")) |proc| {
        function_pointers.glLightfv = @ptrCast(proc);
    } else {
        log.err("entry point glLightfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLineWidth")) |proc| {
        function_pointers.glLineWidth = @ptrCast(proc);
    } else {
        log.err("entry point glLineWidth not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadMatrixf")) |proc| {
        function_pointers.glLoadMatrixf = @ptrCast(proc);
    } else {
        log.err("entry point glLoadMatrixf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMaterialf")) |proc| {
        function_pointers.glMaterialf = @ptrCast(proc);
    } else {
        log.err("entry point glMaterialf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMaterialfv")) |proc| {
        function_pointers.glMaterialfv = @ptrCast(proc);
    } else {
        log.err("entry point glMaterialfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultMatrixf")) |proc| {
        function_pointers.glMultMatrixf = @ptrCast(proc);
    } else {
        log.err("entry point glMultMatrixf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4f")) |proc| {
        function_pointers.glMultiTexCoord4f = @ptrCast(proc);
    } else {
        log.err("entry point glMultiTexCoord4f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3f")) |proc| {
        function_pointers.glNormal3f = @ptrCast(proc);
    } else {
        log.err("entry point glNormal3f not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glOrthof")) |proc| {
        function_pointers.glOrthof = @ptrCast(proc);
    } else {
        log.err("entry point glOrthof not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointParameterf")) |proc| {
        function_pointers.glPointParameterf = @ptrCast(proc);
    } else {
        log.err("entry point glPointParameterf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointParameterfv")) |proc| {
        function_pointers.glPointParameterfv = @ptrCast(proc);
    } else {
        log.err("entry point glPointParameterfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointSize")) |proc| {
        function_pointers.glPointSize = @ptrCast(proc);
    } else {
        log.err("entry point glPointSize not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPolygonOffset")) |proc| {
        function_pointers.glPolygonOffset = @ptrCast(proc);
    } else {
        log.err("entry point glPolygonOffset not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRotatef")) |proc| {
        function_pointers.glRotatef = @ptrCast(proc);
    } else {
        log.err("entry point glRotatef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glScalef")) |proc| {
        function_pointers.glScalef = @ptrCast(proc);
    } else {
        log.err("entry point glScalef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnvf")) |proc| {
        function_pointers.glTexEnvf = @ptrCast(proc);
    } else {
        log.err("entry point glTexEnvf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnvfv")) |proc| {
        function_pointers.glTexEnvfv = @ptrCast(proc);
    } else {
        log.err("entry point glTexEnvfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameterf")) |proc| {
        function_pointers.glTexParameterf = @ptrCast(proc);
    } else {
        log.err("entry point glTexParameterf not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameterfv")) |proc| {
        function_pointers.glTexParameterfv = @ptrCast(proc);
    } else {
        log.err("entry point glTexParameterfv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTranslatef")) |proc| {
        function_pointers.glTranslatef = @ptrCast(proc);
    } else {
        log.err("entry point glTranslatef not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glActiveTexture")) |proc| {
        function_pointers.glActiveTexture = @ptrCast(proc);
    } else {
        log.err("entry point glActiveTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glAlphaFuncx")) |proc| {
        function_pointers.glAlphaFuncx = @ptrCast(proc);
    } else {
        log.err("entry point glAlphaFuncx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindBuffer")) |proc| {
        function_pointers.glBindBuffer = @ptrCast(proc);
    } else {
        log.err("entry point glBindBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBindTexture")) |proc| {
        function_pointers.glBindTexture = @ptrCast(proc);
    } else {
        log.err("entry point glBindTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBlendFunc")) |proc| {
        function_pointers.glBlendFunc = @ptrCast(proc);
    } else {
        log.err("entry point glBlendFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBufferData")) |proc| {
        function_pointers.glBufferData = @ptrCast(proc);
    } else {
        log.err("entry point glBufferData not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glBufferSubData")) |proc| {
        function_pointers.glBufferSubData = @ptrCast(proc);
    } else {
        log.err("entry point glBufferSubData not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClear")) |proc| {
        function_pointers.glClear = @ptrCast(proc);
    } else {
        log.err("entry point glClear not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearColorx")) |proc| {
        function_pointers.glClearColorx = @ptrCast(proc);
    } else {
        log.err("entry point glClearColorx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearDepthx")) |proc| {
        function_pointers.glClearDepthx = @ptrCast(proc);
    } else {
        log.err("entry point glClearDepthx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClearStencil")) |proc| {
        function_pointers.glClearStencil = @ptrCast(proc);
    } else {
        log.err("entry point glClearStencil not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClientActiveTexture")) |proc| {
        function_pointers.glClientActiveTexture = @ptrCast(proc);
    } else {
        log.err("entry point glClientActiveTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glClipPlanex")) |proc| {
        function_pointers.glClipPlanex = @ptrCast(proc);
    } else {
        log.err("entry point glClipPlanex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4ub")) |proc| {
        function_pointers.glColor4ub = @ptrCast(proc);
    } else {
        log.err("entry point glColor4ub not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColor4x")) |proc| {
        function_pointers.glColor4x = @ptrCast(proc);
    } else {
        log.err("entry point glColor4x not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColorMask")) |proc| {
        function_pointers.glColorMask = @ptrCast(proc);
    } else {
        log.err("entry point glColorMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glColorPointer")) |proc| {
        function_pointers.glColorPointer = @ptrCast(proc);
    } else {
        log.err("entry point glColorPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexImage2D")) |proc| {
        function_pointers.glCompressedTexImage2D = @ptrCast(proc);
    } else {
        log.err("entry point glCompressedTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCompressedTexSubImage2D")) |proc| {
        function_pointers.glCompressedTexSubImage2D = @ptrCast(proc);
    } else {
        log.err("entry point glCompressedTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyTexImage2D")) |proc| {
        function_pointers.glCopyTexImage2D = @ptrCast(proc);
    } else {
        log.err("entry point glCopyTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCopyTexSubImage2D")) |proc| {
        function_pointers.glCopyTexSubImage2D = @ptrCast(proc);
    } else {
        log.err("entry point glCopyTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glCullFace")) |proc| {
        function_pointers.glCullFace = @ptrCast(proc);
    } else {
        log.err("entry point glCullFace not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteBuffers")) |proc| {
        function_pointers.glDeleteBuffers = @ptrCast(proc);
    } else {
        log.err("entry point glDeleteBuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDeleteTextures")) |proc| {
        function_pointers.glDeleteTextures = @ptrCast(proc);
    } else {
        log.err("entry point glDeleteTextures not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthFunc")) |proc| {
        function_pointers.glDepthFunc = @ptrCast(proc);
    } else {
        log.err("entry point glDepthFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthMask")) |proc| {
        function_pointers.glDepthMask = @ptrCast(proc);
    } else {
        log.err("entry point glDepthMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDepthRangex")) |proc| {
        function_pointers.glDepthRangex = @ptrCast(proc);
    } else {
        log.err("entry point glDepthRangex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDisable")) |proc| {
        function_pointers.glDisable = @ptrCast(proc);
    } else {
        log.err("entry point glDisable not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDisableClientState")) |proc| {
        function_pointers.glDisableClientState = @ptrCast(proc);
    } else {
        log.err("entry point glDisableClientState not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawArrays")) |proc| {
        function_pointers.glDrawArrays = @ptrCast(proc);
    } else {
        log.err("entry point glDrawArrays not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glDrawElements")) |proc| {
        function_pointers.glDrawElements = @ptrCast(proc);
    } else {
        log.err("entry point glDrawElements not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEnable")) |proc| {
        function_pointers.glEnable = @ptrCast(proc);
    } else {
        log.err("entry point glEnable not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glEnableClientState")) |proc| {
        function_pointers.glEnableClientState = @ptrCast(proc);
    } else {
        log.err("entry point glEnableClientState not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFinish")) |proc| {
        function_pointers.glFinish = @ptrCast(proc);
    } else {
        log.err("entry point glFinish not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFlush")) |proc| {
        function_pointers.glFlush = @ptrCast(proc);
    } else {
        log.err("entry point glFlush not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogx")) |proc| {
        function_pointers.glFogx = @ptrCast(proc);
    } else {
        log.err("entry point glFogx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFogxv")) |proc| {
        function_pointers.glFogxv = @ptrCast(proc);
    } else {
        log.err("entry point glFogxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFrontFace")) |proc| {
        function_pointers.glFrontFace = @ptrCast(proc);
    } else {
        log.err("entry point glFrontFace not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glFrustumx")) |proc| {
        function_pointers.glFrustumx = @ptrCast(proc);
    } else {
        log.err("entry point glFrustumx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetBooleanv")) |proc| {
        function_pointers.glGetBooleanv = @ptrCast(proc);
    } else {
        log.err("entry point glGetBooleanv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetBufferParameteriv")) |proc| {
        function_pointers.glGetBufferParameteriv = @ptrCast(proc);
    } else {
        log.err("entry point glGetBufferParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetClipPlanex")) |proc| {
        function_pointers.glGetClipPlanex = @ptrCast(proc);
    } else {
        log.err("entry point glGetClipPlanex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenBuffers")) |proc| {
        function_pointers.glGenBuffers = @ptrCast(proc);
    } else {
        log.err("entry point glGenBuffers not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGenTextures")) |proc| {
        function_pointers.glGenTextures = @ptrCast(proc);
    } else {
        log.err("entry point glGenTextures not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetError")) |proc| {
        function_pointers.glGetError = @ptrCast(proc);
    } else {
        log.err("entry point glGetError not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetFixedv")) |proc| {
        function_pointers.glGetFixedv = @ptrCast(proc);
    } else {
        log.err("entry point glGetFixedv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetIntegerv")) |proc| {
        function_pointers.glGetIntegerv = @ptrCast(proc);
    } else {
        log.err("entry point glGetIntegerv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetLightxv")) |proc| {
        function_pointers.glGetLightxv = @ptrCast(proc);
    } else {
        log.err("entry point glGetLightxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetMaterialxv")) |proc| {
        function_pointers.glGetMaterialxv = @ptrCast(proc);
    } else {
        log.err("entry point glGetMaterialxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetPointerv")) |proc| {
        function_pointers.glGetPointerv = @ptrCast(proc);
    } else {
        log.err("entry point glGetPointerv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetString")) |proc| {
        function_pointers.glGetString = @ptrCast(proc);
    } else {
        log.err("entry point glGetString not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexEnviv")) |proc| {
        function_pointers.glGetTexEnviv = @ptrCast(proc);
    } else {
        log.err("entry point glGetTexEnviv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexEnvxv")) |proc| {
        function_pointers.glGetTexEnvxv = @ptrCast(proc);
    } else {
        log.err("entry point glGetTexEnvxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameteriv")) |proc| {
        function_pointers.glGetTexParameteriv = @ptrCast(proc);
    } else {
        log.err("entry point glGetTexParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glGetTexParameterxv")) |proc| {
        function_pointers.glGetTexParameterxv = @ptrCast(proc);
    } else {
        log.err("entry point glGetTexParameterxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glHint")) |proc| {
        function_pointers.glHint = @ptrCast(proc);
    } else {
        log.err("entry point glHint not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsBuffer")) |proc| {
        function_pointers.glIsBuffer = @ptrCast(proc);
    } else {
        log.err("entry point glIsBuffer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsEnabled")) |proc| {
        function_pointers.glIsEnabled = @ptrCast(proc);
    } else {
        log.err("entry point glIsEnabled not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glIsTexture")) |proc| {
        function_pointers.glIsTexture = @ptrCast(proc);
    } else {
        log.err("entry point glIsTexture not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightModelx")) |proc| {
        function_pointers.glLightModelx = @ptrCast(proc);
    } else {
        log.err("entry point glLightModelx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightModelxv")) |proc| {
        function_pointers.glLightModelxv = @ptrCast(proc);
    } else {
        log.err("entry point glLightModelxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightx")) |proc| {
        function_pointers.glLightx = @ptrCast(proc);
    } else {
        log.err("entry point glLightx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLightxv")) |proc| {
        function_pointers.glLightxv = @ptrCast(proc);
    } else {
        log.err("entry point glLightxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLineWidthx")) |proc| {
        function_pointers.glLineWidthx = @ptrCast(proc);
    } else {
        log.err("entry point glLineWidthx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadIdentity")) |proc| {
        function_pointers.glLoadIdentity = @ptrCast(proc);
    } else {
        log.err("entry point glLoadIdentity not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLoadMatrixx")) |proc| {
        function_pointers.glLoadMatrixx = @ptrCast(proc);
    } else {
        log.err("entry point glLoadMatrixx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glLogicOp")) |proc| {
        function_pointers.glLogicOp = @ptrCast(proc);
    } else {
        log.err("entry point glLogicOp not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMaterialx")) |proc| {
        function_pointers.glMaterialx = @ptrCast(proc);
    } else {
        log.err("entry point glMaterialx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMaterialxv")) |proc| {
        function_pointers.glMaterialxv = @ptrCast(proc);
    } else {
        log.err("entry point glMaterialxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMatrixMode")) |proc| {
        function_pointers.glMatrixMode = @ptrCast(proc);
    } else {
        log.err("entry point glMatrixMode not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultMatrixx")) |proc| {
        function_pointers.glMultMatrixx = @ptrCast(proc);
    } else {
        log.err("entry point glMultMatrixx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glMultiTexCoord4x")) |proc| {
        function_pointers.glMultiTexCoord4x = @ptrCast(proc);
    } else {
        log.err("entry point glMultiTexCoord4x not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormal3x")) |proc| {
        function_pointers.glNormal3x = @ptrCast(proc);
    } else {
        log.err("entry point glNormal3x not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glNormalPointer")) |proc| {
        function_pointers.glNormalPointer = @ptrCast(proc);
    } else {
        log.err("entry point glNormalPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glOrthox")) |proc| {
        function_pointers.glOrthox = @ptrCast(proc);
    } else {
        log.err("entry point glOrthox not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPixelStorei")) |proc| {
        function_pointers.glPixelStorei = @ptrCast(proc);
    } else {
        log.err("entry point glPixelStorei not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointParameterx")) |proc| {
        function_pointers.glPointParameterx = @ptrCast(proc);
    } else {
        log.err("entry point glPointParameterx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointParameterxv")) |proc| {
        function_pointers.glPointParameterxv = @ptrCast(proc);
    } else {
        log.err("entry point glPointParameterxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPointSizex")) |proc| {
        function_pointers.glPointSizex = @ptrCast(proc);
    } else {
        log.err("entry point glPointSizex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPolygonOffsetx")) |proc| {
        function_pointers.glPolygonOffsetx = @ptrCast(proc);
    } else {
        log.err("entry point glPolygonOffsetx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPopMatrix")) |proc| {
        function_pointers.glPopMatrix = @ptrCast(proc);
    } else {
        log.err("entry point glPopMatrix not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glPushMatrix")) |proc| {
        function_pointers.glPushMatrix = @ptrCast(proc);
    } else {
        log.err("entry point glPushMatrix not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glReadPixels")) |proc| {
        function_pointers.glReadPixels = @ptrCast(proc);
    } else {
        log.err("entry point glReadPixels not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glRotatex")) |proc| {
        function_pointers.glRotatex = @ptrCast(proc);
    } else {
        log.err("entry point glRotatex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSampleCoverage")) |proc| {
        function_pointers.glSampleCoverage = @ptrCast(proc);
    } else {
        log.err("entry point glSampleCoverage not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glSampleCoveragex")) |proc| {
        function_pointers.glSampleCoveragex = @ptrCast(proc);
    } else {
        log.err("entry point glSampleCoveragex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glScalex")) |proc| {
        function_pointers.glScalex = @ptrCast(proc);
    } else {
        log.err("entry point glScalex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glScissor")) |proc| {
        function_pointers.glScissor = @ptrCast(proc);
    } else {
        log.err("entry point glScissor not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glShadeModel")) |proc| {
        function_pointers.glShadeModel = @ptrCast(proc);
    } else {
        log.err("entry point glShadeModel not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilFunc")) |proc| {
        function_pointers.glStencilFunc = @ptrCast(proc);
    } else {
        log.err("entry point glStencilFunc not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilMask")) |proc| {
        function_pointers.glStencilMask = @ptrCast(proc);
    } else {
        log.err("entry point glStencilMask not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glStencilOp")) |proc| {
        function_pointers.glStencilOp = @ptrCast(proc);
    } else {
        log.err("entry point glStencilOp not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexCoordPointer")) |proc| {
        function_pointers.glTexCoordPointer = @ptrCast(proc);
    } else {
        log.err("entry point glTexCoordPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnvi")) |proc| {
        function_pointers.glTexEnvi = @ptrCast(proc);
    } else {
        log.err("entry point glTexEnvi not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnvx")) |proc| {
        function_pointers.glTexEnvx = @ptrCast(proc);
    } else {
        log.err("entry point glTexEnvx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnviv")) |proc| {
        function_pointers.glTexEnviv = @ptrCast(proc);
    } else {
        log.err("entry point glTexEnviv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexEnvxv")) |proc| {
        function_pointers.glTexEnvxv = @ptrCast(proc);
    } else {
        log.err("entry point glTexEnvxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexImage2D")) |proc| {
        function_pointers.glTexImage2D = @ptrCast(proc);
    } else {
        log.err("entry point glTexImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameteri")) |proc| {
        function_pointers.glTexParameteri = @ptrCast(proc);
    } else {
        log.err("entry point glTexParameteri not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameterx")) |proc| {
        function_pointers.glTexParameterx = @ptrCast(proc);
    } else {
        log.err("entry point glTexParameterx not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameteriv")) |proc| {
        function_pointers.glTexParameteriv = @ptrCast(proc);
    } else {
        log.err("entry point glTexParameteriv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexParameterxv")) |proc| {
        function_pointers.glTexParameterxv = @ptrCast(proc);
    } else {
        log.err("entry point glTexParameterxv not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTexSubImage2D")) |proc| {
        function_pointers.glTexSubImage2D = @ptrCast(proc);
    } else {
        log.err("entry point glTexSubImage2D not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glTranslatex")) |proc| {
        function_pointers.glTranslatex = @ptrCast(proc);
    } else {
        log.err("entry point glTranslatex not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glVertexPointer")) |proc| {
        function_pointers.glVertexPointer = @ptrCast(proc);
    } else {
        log.err("entry point glVertexPointer not found!", .{});
        success = false;
    }
    if (get_proc_address(load_ctx, "glViewport")) |proc| {
        function_pointers.glViewport = @ptrCast(proc);
    } else {
        log.err("entry point glViewport not found!", .{});
        success = false;
    }
    if (!success)
        return error.EntryPointNotFound;
}

const function_signatures = struct {
    const glAlphaFunc = fn (_func: GLenum, _ref: GLfloat) callconv(.C) void;
    const glClearColor = fn (_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) callconv(.C) void;
    const glClearDepthf = fn (_d: GLfloat) callconv(.C) void;
    const glClipPlanef = fn (_p: GLenum, _eqn: [*c]const GLfloat) callconv(.C) void;
    const glColor4f = fn (_red: GLfloat, _green: GLfloat, _blue: GLfloat, _alpha: GLfloat) callconv(.C) void;
    const glDepthRangef = fn (_n: GLfloat, _f: GLfloat) callconv(.C) void;
    const glFogf = fn (_pname: GLenum, _param: GLfloat) callconv(.C) void;
    const glFogfv = fn (_pname: GLenum, _params: [*c]const GLfloat) callconv(.C) void;
    const glFrustumf = fn (_l: GLfloat, _r: GLfloat, _b: GLfloat, _t: GLfloat, _n: GLfloat, _f: GLfloat) callconv(.C) void;
    const glGetClipPlanef = fn (_plane: GLenum, _equation: [*c]GLfloat) callconv(.C) void;
    const glGetFloatv = fn (_pname: GLenum, _data: [*c]GLfloat) callconv(.C) void;
    const glGetLightfv = fn (_light: GLenum, _pname: GLenum, _params: [*c]GLfloat) callconv(.C) void;
    const glGetMaterialfv = fn (_face: GLenum, _pname: GLenum, _params: [*c]GLfloat) callconv(.C) void;
    const glGetTexEnvfv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLfloat) callconv(.C) void;
    const glGetTexParameterfv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLfloat) callconv(.C) void;
    const glLightModelf = fn (_pname: GLenum, _param: GLfloat) callconv(.C) void;
    const glLightModelfv = fn (_pname: GLenum, _params: [*c]const GLfloat) callconv(.C) void;
    const glLightf = fn (_light: GLenum, _pname: GLenum, _param: GLfloat) callconv(.C) void;
    const glLightfv = fn (_light: GLenum, _pname: GLenum, _params: [*c]const GLfloat) callconv(.C) void;
    const glLineWidth = fn (_width: GLfloat) callconv(.C) void;
    const glLoadMatrixf = fn (_m: [*c]const GLfloat) callconv(.C) void;
    const glMaterialf = fn (_face: GLenum, _pname: GLenum, _param: GLfloat) callconv(.C) void;
    const glMaterialfv = fn (_face: GLenum, _pname: GLenum, _params: [*c]const GLfloat) callconv(.C) void;
    const glMultMatrixf = fn (_m: [*c]const GLfloat) callconv(.C) void;
    const glMultiTexCoord4f = fn (_target: GLenum, _s: GLfloat, _t: GLfloat, _r: GLfloat, _q: GLfloat) callconv(.C) void;
    const glNormal3f = fn (_nx: GLfloat, _ny: GLfloat, _nz: GLfloat) callconv(.C) void;
    const glOrthof = fn (_l: GLfloat, _r: GLfloat, _b: GLfloat, _t: GLfloat, _n: GLfloat, _f: GLfloat) callconv(.C) void;
    const glPointParameterf = fn (_pname: GLenum, _param: GLfloat) callconv(.C) void;
    const glPointParameterfv = fn (_pname: GLenum, _params: [*c]const GLfloat) callconv(.C) void;
    const glPointSize = fn (_size: GLfloat) callconv(.C) void;
    const glPolygonOffset = fn (_factor: GLfloat, _units: GLfloat) callconv(.C) void;
    const glRotatef = fn (_angle: GLfloat, _x: GLfloat, _y: GLfloat, _z: GLfloat) callconv(.C) void;
    const glScalef = fn (_x: GLfloat, _y: GLfloat, _z: GLfloat) callconv(.C) void;
    const glTexEnvf = fn (_target: GLenum, _pname: GLenum, _param: GLfloat) callconv(.C) void;
    const glTexEnvfv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLfloat) callconv(.C) void;
    const glTexParameterf = fn (_target: GLenum, _pname: GLenum, _param: GLfloat) callconv(.C) void;
    const glTexParameterfv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLfloat) callconv(.C) void;
    const glTranslatef = fn (_x: GLfloat, _y: GLfloat, _z: GLfloat) callconv(.C) void;
    const glActiveTexture = fn (_texture: GLenum) callconv(.C) void;
    const glAlphaFuncx = fn (_func: GLenum, _ref: GLfixed) callconv(.C) void;
    const glBindBuffer = fn (_target: GLenum, _buffer: GLuint) callconv(.C) void;
    const glBindTexture = fn (_target: GLenum, _texture: GLuint) callconv(.C) void;
    const glBlendFunc = fn (_sfactor: GLenum, _dfactor: GLenum) callconv(.C) void;
    const glBufferData = fn (_target: GLenum, _size: GLsizeiptr, _data: ?*const anyopaque, _usage: GLenum) callconv(.C) void;
    const glBufferSubData = fn (_target: GLenum, _offset: GLintptr, _size: GLsizeiptr, _data: ?*const anyopaque) callconv(.C) void;
    const glClear = fn (_mask: GLbitfield) callconv(.C) void;
    const glClearColorx = fn (_red: GLfixed, _green: GLfixed, _blue: GLfixed, _alpha: GLfixed) callconv(.C) void;
    const glClearDepthx = fn (_depth: GLfixed) callconv(.C) void;
    const glClearStencil = fn (_s: GLint) callconv(.C) void;
    const glClientActiveTexture = fn (_texture: GLenum) callconv(.C) void;
    const glClipPlanex = fn (_plane: GLenum, _equation: [*c]const GLfixed) callconv(.C) void;
    const glColor4ub = fn (_red: GLubyte, _green: GLubyte, _blue: GLubyte, _alpha: GLubyte) callconv(.C) void;
    const glColor4x = fn (_red: GLfixed, _green: GLfixed, _blue: GLfixed, _alpha: GLfixed) callconv(.C) void;
    const glColorMask = fn (_red: GLboolean, _green: GLboolean, _blue: GLboolean, _alpha: GLboolean) callconv(.C) void;
    const glColorPointer = fn (_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) callconv(.C) void;
    const glCompressedTexImage2D = fn (_target: GLenum, _level: GLint, _internalformat: GLenum, _width: GLsizei, _height: GLsizei, _border: GLint, _imageSize: GLsizei, _data: ?*const anyopaque) callconv(.C) void;
    const glCompressedTexSubImage2D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _imageSize: GLsizei, _data: ?*const anyopaque) callconv(.C) void;
    const glCopyTexImage2D = fn (_target: GLenum, _level: GLint, _internalformat: GLenum, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _border: GLint) callconv(.C) void;
    const glCopyTexSubImage2D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) callconv(.C) void;
    const glCullFace = fn (_mode: GLenum) callconv(.C) void;
    const glDeleteBuffers = fn (_n: GLsizei, _buffers: [*c]const GLuint) callconv(.C) void;
    const glDeleteTextures = fn (_n: GLsizei, _textures: [*c]const GLuint) callconv(.C) void;
    const glDepthFunc = fn (_func: GLenum) callconv(.C) void;
    const glDepthMask = fn (_flag: GLboolean) callconv(.C) void;
    const glDepthRangex = fn (_n: GLfixed, _f: GLfixed) callconv(.C) void;
    const glDisable = fn (_cap: GLenum) callconv(.C) void;
    const glDisableClientState = fn (_array: GLenum) callconv(.C) void;
    const glDrawArrays = fn (_mode: GLenum, _first: GLint, _count: GLsizei) callconv(.C) void;
    const glDrawElements = fn (_mode: GLenum, _count: GLsizei, _type: GLenum, _indices: ?*const anyopaque) callconv(.C) void;
    const glEnable = fn (_cap: GLenum) callconv(.C) void;
    const glEnableClientState = fn (_array: GLenum) callconv(.C) void;
    const glFinish = fn () callconv(.C) void;
    const glFlush = fn () callconv(.C) void;
    const glFogx = fn (_pname: GLenum, _param: GLfixed) callconv(.C) void;
    const glFogxv = fn (_pname: GLenum, _param: [*c]const GLfixed) callconv(.C) void;
    const glFrontFace = fn (_mode: GLenum) callconv(.C) void;
    const glFrustumx = fn (_l: GLfixed, _r: GLfixed, _b: GLfixed, _t: GLfixed, _n: GLfixed, _f: GLfixed) callconv(.C) void;
    const glGetBooleanv = fn (_pname: GLenum, _data: [*c]GLboolean) callconv(.C) void;
    const glGetBufferParameteriv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLint) callconv(.C) void;
    const glGetClipPlanex = fn (_plane: GLenum, _equation: [*c]GLfixed) callconv(.C) void;
    const glGenBuffers = fn (_n: GLsizei, _buffers: [*c]GLuint) callconv(.C) void;
    const glGenTextures = fn (_n: GLsizei, _textures: [*c]GLuint) callconv(.C) void;
    const glGetError = fn () callconv(.C) GLenum;
    const glGetFixedv = fn (_pname: GLenum, _params: [*c]GLfixed) callconv(.C) void;
    const glGetIntegerv = fn (_pname: GLenum, _data: [*c]GLint) callconv(.C) void;
    const glGetLightxv = fn (_light: GLenum, _pname: GLenum, _params: [*c]GLfixed) callconv(.C) void;
    const glGetMaterialxv = fn (_face: GLenum, _pname: GLenum, _params: [*c]GLfixed) callconv(.C) void;
    const glGetPointerv = fn (_pname: GLenum, _params: ?*?*anyopaque) callconv(.C) void;
    const glGetString = fn (_name: GLenum) callconv(.C) ?[*:0]const GLubyte;
    const glGetTexEnviv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLint) callconv(.C) void;
    const glGetTexEnvxv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLfixed) callconv(.C) void;
    const glGetTexParameteriv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLint) callconv(.C) void;
    const glGetTexParameterxv = fn (_target: GLenum, _pname: GLenum, _params: [*c]GLfixed) callconv(.C) void;
    const glHint = fn (_target: GLenum, _mode: GLenum) callconv(.C) void;
    const glIsBuffer = fn (_buffer: GLuint) callconv(.C) GLboolean;
    const glIsEnabled = fn (_cap: GLenum) callconv(.C) GLboolean;
    const glIsTexture = fn (_texture: GLuint) callconv(.C) GLboolean;
    const glLightModelx = fn (_pname: GLenum, _param: GLfixed) callconv(.C) void;
    const glLightModelxv = fn (_pname: GLenum, _param: [*c]const GLfixed) callconv(.C) void;
    const glLightx = fn (_light: GLenum, _pname: GLenum, _param: GLfixed) callconv(.C) void;
    const glLightxv = fn (_light: GLenum, _pname: GLenum, _params: [*c]const GLfixed) callconv(.C) void;
    const glLineWidthx = fn (_width: GLfixed) callconv(.C) void;
    const glLoadIdentity = fn () callconv(.C) void;
    const glLoadMatrixx = fn (_m: [*c]const GLfixed) callconv(.C) void;
    const glLogicOp = fn (_opcode: GLenum) callconv(.C) void;
    const glMaterialx = fn (_face: GLenum, _pname: GLenum, _param: GLfixed) callconv(.C) void;
    const glMaterialxv = fn (_face: GLenum, _pname: GLenum, _param: [*c]const GLfixed) callconv(.C) void;
    const glMatrixMode = fn (_mode: GLenum) callconv(.C) void;
    const glMultMatrixx = fn (_m: [*c]const GLfixed) callconv(.C) void;
    const glMultiTexCoord4x = fn (_texture: GLenum, _s: GLfixed, _t: GLfixed, _r: GLfixed, _q: GLfixed) callconv(.C) void;
    const glNormal3x = fn (_nx: GLfixed, _ny: GLfixed, _nz: GLfixed) callconv(.C) void;
    const glNormalPointer = fn (_type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) callconv(.C) void;
    const glOrthox = fn (_l: GLfixed, _r: GLfixed, _b: GLfixed, _t: GLfixed, _n: GLfixed, _f: GLfixed) callconv(.C) void;
    const glPixelStorei = fn (_pname: GLenum, _param: GLint) callconv(.C) void;
    const glPointParameterx = fn (_pname: GLenum, _param: GLfixed) callconv(.C) void;
    const glPointParameterxv = fn (_pname: GLenum, _params: [*c]const GLfixed) callconv(.C) void;
    const glPointSizex = fn (_size: GLfixed) callconv(.C) void;
    const glPolygonOffsetx = fn (_factor: GLfixed, _units: GLfixed) callconv(.C) void;
    const glPopMatrix = fn () callconv(.C) void;
    const glPushMatrix = fn () callconv(.C) void;
    const glReadPixels = fn (_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*anyopaque) callconv(.C) void;
    const glRotatex = fn (_angle: GLfixed, _x: GLfixed, _y: GLfixed, _z: GLfixed) callconv(.C) void;
    const glSampleCoverage = fn (_value: GLfloat, _invert: GLboolean) callconv(.C) void;
    const glSampleCoveragex = fn (_value: GLclampx, _invert: GLboolean) callconv(.C) void;
    const glScalex = fn (_x: GLfixed, _y: GLfixed, _z: GLfixed) callconv(.C) void;
    const glScissor = fn (_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) callconv(.C) void;
    const glShadeModel = fn (_mode: GLenum) callconv(.C) void;
    const glStencilFunc = fn (_func: GLenum, _ref: GLint, _mask: GLuint) callconv(.C) void;
    const glStencilMask = fn (_mask: GLuint) callconv(.C) void;
    const glStencilOp = fn (_fail: GLenum, _zfail: GLenum, _zpass: GLenum) callconv(.C) void;
    const glTexCoordPointer = fn (_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) callconv(.C) void;
    const glTexEnvi = fn (_target: GLenum, _pname: GLenum, _param: GLint) callconv(.C) void;
    const glTexEnvx = fn (_target: GLenum, _pname: GLenum, _param: GLfixed) callconv(.C) void;
    const glTexEnviv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLint) callconv(.C) void;
    const glTexEnvxv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLfixed) callconv(.C) void;
    const glTexImage2D = fn (_target: GLenum, _level: GLint, _internalformat: GLint, _width: GLsizei, _height: GLsizei, _border: GLint, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) callconv(.C) void;
    const glTexParameteri = fn (_target: GLenum, _pname: GLenum, _param: GLint) callconv(.C) void;
    const glTexParameterx = fn (_target: GLenum, _pname: GLenum, _param: GLfixed) callconv(.C) void;
    const glTexParameteriv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLint) callconv(.C) void;
    const glTexParameterxv = fn (_target: GLenum, _pname: GLenum, _params: [*c]const GLfixed) callconv(.C) void;
    const glTexSubImage2D = fn (_target: GLenum, _level: GLint, _xoffset: GLint, _yoffset: GLint, _width: GLsizei, _height: GLsizei, _format: GLenum, _type: GLenum, _pixels: ?*const anyopaque) callconv(.C) void;
    const glTranslatex = fn (_x: GLfixed, _y: GLfixed, _z: GLfixed) callconv(.C) void;
    const glVertexPointer = fn (_size: GLint, _type: GLenum, _stride: GLsizei, _pointer: ?*const anyopaque) callconv(.C) void;
    const glViewport = fn (_x: GLint, _y: GLint, _width: GLsizei, _height: GLsizei) callconv(.C) void;
};

const function_pointers = struct {
    var glAlphaFunc: *const function_signatures.glAlphaFunc = undefined;
    var glClearColor: *const function_signatures.glClearColor = undefined;
    var glClearDepthf: *const function_signatures.glClearDepthf = undefined;
    var glClipPlanef: *const function_signatures.glClipPlanef = undefined;
    var glColor4f: *const function_signatures.glColor4f = undefined;
    var glDepthRangef: *const function_signatures.glDepthRangef = undefined;
    var glFogf: *const function_signatures.glFogf = undefined;
    var glFogfv: *const function_signatures.glFogfv = undefined;
    var glFrustumf: *const function_signatures.glFrustumf = undefined;
    var glGetClipPlanef: *const function_signatures.glGetClipPlanef = undefined;
    var glGetFloatv: *const function_signatures.glGetFloatv = undefined;
    var glGetLightfv: *const function_signatures.glGetLightfv = undefined;
    var glGetMaterialfv: *const function_signatures.glGetMaterialfv = undefined;
    var glGetTexEnvfv: *const function_signatures.glGetTexEnvfv = undefined;
    var glGetTexParameterfv: *const function_signatures.glGetTexParameterfv = undefined;
    var glLightModelf: *const function_signatures.glLightModelf = undefined;
    var glLightModelfv: *const function_signatures.glLightModelfv = undefined;
    var glLightf: *const function_signatures.glLightf = undefined;
    var glLightfv: *const function_signatures.glLightfv = undefined;
    var glLineWidth: *const function_signatures.glLineWidth = undefined;
    var glLoadMatrixf: *const function_signatures.glLoadMatrixf = undefined;
    var glMaterialf: *const function_signatures.glMaterialf = undefined;
    var glMaterialfv: *const function_signatures.glMaterialfv = undefined;
    var glMultMatrixf: *const function_signatures.glMultMatrixf = undefined;
    var glMultiTexCoord4f: *const function_signatures.glMultiTexCoord4f = undefined;
    var glNormal3f: *const function_signatures.glNormal3f = undefined;
    var glOrthof: *const function_signatures.glOrthof = undefined;
    var glPointParameterf: *const function_signatures.glPointParameterf = undefined;
    var glPointParameterfv: *const function_signatures.glPointParameterfv = undefined;
    var glPointSize: *const function_signatures.glPointSize = undefined;
    var glPolygonOffset: *const function_signatures.glPolygonOffset = undefined;
    var glRotatef: *const function_signatures.glRotatef = undefined;
    var glScalef: *const function_signatures.glScalef = undefined;
    var glTexEnvf: *const function_signatures.glTexEnvf = undefined;
    var glTexEnvfv: *const function_signatures.glTexEnvfv = undefined;
    var glTexParameterf: *const function_signatures.glTexParameterf = undefined;
    var glTexParameterfv: *const function_signatures.glTexParameterfv = undefined;
    var glTranslatef: *const function_signatures.glTranslatef = undefined;
    var glActiveTexture: *const function_signatures.glActiveTexture = undefined;
    var glAlphaFuncx: *const function_signatures.glAlphaFuncx = undefined;
    var glBindBuffer: *const function_signatures.glBindBuffer = undefined;
    var glBindTexture: *const function_signatures.glBindTexture = undefined;
    var glBlendFunc: *const function_signatures.glBlendFunc = undefined;
    var glBufferData: *const function_signatures.glBufferData = undefined;
    var glBufferSubData: *const function_signatures.glBufferSubData = undefined;
    var glClear: *const function_signatures.glClear = undefined;
    var glClearColorx: *const function_signatures.glClearColorx = undefined;
    var glClearDepthx: *const function_signatures.glClearDepthx = undefined;
    var glClearStencil: *const function_signatures.glClearStencil = undefined;
    var glClientActiveTexture: *const function_signatures.glClientActiveTexture = undefined;
    var glClipPlanex: *const function_signatures.glClipPlanex = undefined;
    var glColor4ub: *const function_signatures.glColor4ub = undefined;
    var glColor4x: *const function_signatures.glColor4x = undefined;
    var glColorMask: *const function_signatures.glColorMask = undefined;
    var glColorPointer: *const function_signatures.glColorPointer = undefined;
    var glCompressedTexImage2D: *const function_signatures.glCompressedTexImage2D = undefined;
    var glCompressedTexSubImage2D: *const function_signatures.glCompressedTexSubImage2D = undefined;
    var glCopyTexImage2D: *const function_signatures.glCopyTexImage2D = undefined;
    var glCopyTexSubImage2D: *const function_signatures.glCopyTexSubImage2D = undefined;
    var glCullFace: *const function_signatures.glCullFace = undefined;
    var glDeleteBuffers: *const function_signatures.glDeleteBuffers = undefined;
    var glDeleteTextures: *const function_signatures.glDeleteTextures = undefined;
    var glDepthFunc: *const function_signatures.glDepthFunc = undefined;
    var glDepthMask: *const function_signatures.glDepthMask = undefined;
    var glDepthRangex: *const function_signatures.glDepthRangex = undefined;
    var glDisable: *const function_signatures.glDisable = undefined;
    var glDisableClientState: *const function_signatures.glDisableClientState = undefined;
    var glDrawArrays: *const function_signatures.glDrawArrays = undefined;
    var glDrawElements: *const function_signatures.glDrawElements = undefined;
    var glEnable: *const function_signatures.glEnable = undefined;
    var glEnableClientState: *const function_signatures.glEnableClientState = undefined;
    var glFinish: *const function_signatures.glFinish = undefined;
    var glFlush: *const function_signatures.glFlush = undefined;
    var glFogx: *const function_signatures.glFogx = undefined;
    var glFogxv: *const function_signatures.glFogxv = undefined;
    var glFrontFace: *const function_signatures.glFrontFace = undefined;
    var glFrustumx: *const function_signatures.glFrustumx = undefined;
    var glGetBooleanv: *const function_signatures.glGetBooleanv = undefined;
    var glGetBufferParameteriv: *const function_signatures.glGetBufferParameteriv = undefined;
    var glGetClipPlanex: *const function_signatures.glGetClipPlanex = undefined;
    var glGenBuffers: *const function_signatures.glGenBuffers = undefined;
    var glGenTextures: *const function_signatures.glGenTextures = undefined;
    var glGetError: *const function_signatures.glGetError = undefined;
    var glGetFixedv: *const function_signatures.glGetFixedv = undefined;
    var glGetIntegerv: *const function_signatures.glGetIntegerv = undefined;
    var glGetLightxv: *const function_signatures.glGetLightxv = undefined;
    var glGetMaterialxv: *const function_signatures.glGetMaterialxv = undefined;
    var glGetPointerv: *const function_signatures.glGetPointerv = undefined;
    var glGetString: *const function_signatures.glGetString = undefined;
    var glGetTexEnviv: *const function_signatures.glGetTexEnviv = undefined;
    var glGetTexEnvxv: *const function_signatures.glGetTexEnvxv = undefined;
    var glGetTexParameteriv: *const function_signatures.glGetTexParameteriv = undefined;
    var glGetTexParameterxv: *const function_signatures.glGetTexParameterxv = undefined;
    var glHint: *const function_signatures.glHint = undefined;
    var glIsBuffer: *const function_signatures.glIsBuffer = undefined;
    var glIsEnabled: *const function_signatures.glIsEnabled = undefined;
    var glIsTexture: *const function_signatures.glIsTexture = undefined;
    var glLightModelx: *const function_signatures.glLightModelx = undefined;
    var glLightModelxv: *const function_signatures.glLightModelxv = undefined;
    var glLightx: *const function_signatures.glLightx = undefined;
    var glLightxv: *const function_signatures.glLightxv = undefined;
    var glLineWidthx: *const function_signatures.glLineWidthx = undefined;
    var glLoadIdentity: *const function_signatures.glLoadIdentity = undefined;
    var glLoadMatrixx: *const function_signatures.glLoadMatrixx = undefined;
    var glLogicOp: *const function_signatures.glLogicOp = undefined;
    var glMaterialx: *const function_signatures.glMaterialx = undefined;
    var glMaterialxv: *const function_signatures.glMaterialxv = undefined;
    var glMatrixMode: *const function_signatures.glMatrixMode = undefined;
    var glMultMatrixx: *const function_signatures.glMultMatrixx = undefined;
    var glMultiTexCoord4x: *const function_signatures.glMultiTexCoord4x = undefined;
    var glNormal3x: *const function_signatures.glNormal3x = undefined;
    var glNormalPointer: *const function_signatures.glNormalPointer = undefined;
    var glOrthox: *const function_signatures.glOrthox = undefined;
    var glPixelStorei: *const function_signatures.glPixelStorei = undefined;
    var glPointParameterx: *const function_signatures.glPointParameterx = undefined;
    var glPointParameterxv: *const function_signatures.glPointParameterxv = undefined;
    var glPointSizex: *const function_signatures.glPointSizex = undefined;
    var glPolygonOffsetx: *const function_signatures.glPolygonOffsetx = undefined;
    var glPopMatrix: *const function_signatures.glPopMatrix = undefined;
    var glPushMatrix: *const function_signatures.glPushMatrix = undefined;
    var glReadPixels: *const function_signatures.glReadPixels = undefined;
    var glRotatex: *const function_signatures.glRotatex = undefined;
    var glSampleCoverage: *const function_signatures.glSampleCoverage = undefined;
    var glSampleCoveragex: *const function_signatures.glSampleCoveragex = undefined;
    var glScalex: *const function_signatures.glScalex = undefined;
    var glScissor: *const function_signatures.glScissor = undefined;
    var glShadeModel: *const function_signatures.glShadeModel = undefined;
    var glStencilFunc: *const function_signatures.glStencilFunc = undefined;
    var glStencilMask: *const function_signatures.glStencilMask = undefined;
    var glStencilOp: *const function_signatures.glStencilOp = undefined;
    var glTexCoordPointer: *const function_signatures.glTexCoordPointer = undefined;
    var glTexEnvi: *const function_signatures.glTexEnvi = undefined;
    var glTexEnvx: *const function_signatures.glTexEnvx = undefined;
    var glTexEnviv: *const function_signatures.glTexEnviv = undefined;
    var glTexEnvxv: *const function_signatures.glTexEnvxv = undefined;
    var glTexImage2D: *const function_signatures.glTexImage2D = undefined;
    var glTexParameteri: *const function_signatures.glTexParameteri = undefined;
    var glTexParameterx: *const function_signatures.glTexParameterx = undefined;
    var glTexParameteriv: *const function_signatures.glTexParameteriv = undefined;
    var glTexParameterxv: *const function_signatures.glTexParameterxv = undefined;
    var glTexSubImage2D: *const function_signatures.glTexSubImage2D = undefined;
    var glTranslatex: *const function_signatures.glTranslatex = undefined;
    var glVertexPointer: *const function_signatures.glVertexPointer = undefined;
    var glViewport: *const function_signatures.glViewport = undefined;
};

test {
    _ = load;
    @setEvalBranchQuota(100_000); // Yes, this is necessary. OpenGL gets quite large!
    std.testing.refAllDecls(@This());
}
