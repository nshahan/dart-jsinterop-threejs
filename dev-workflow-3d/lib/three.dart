@JS()
library three;

import "package:js/js.dart";
import "dart:typed_data";
import "package:func/func.dart";
import "dart:html";
import "dart:web_gl";
import "dart:web_audio";

/// Type definitions for three.js r80
/// Project: http://mrdoob.github.com/three.js/
/// Definitions by: Kon <http://phyzkit.net/>, Satoru Kimura <https://github.com/gyohk>, Florent Poujol <https://github.com/florentpoujol>, SereznoKot <https://github.com/SereznoKot>
/// Definitions: https://github.com/borisyankov/DefinitelyTyped

// Module THREE
@JS("THREE.REVISION")
external String get REVISION;

/// https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.button
@JS("THREE.MOUSE")
class MOUSE {
  external static num get LEFT;
  external static num get MIDDLE;
  external static num get RIGHT;
}

/// GL STATE CONSTANTS
@JS("THREE.CullFace")
class CullFace {}

@JS("THREE.CullFaceNone")
external num /*enum CullFace*/ get CullFaceNone;
@JS("THREE.CullFaceBack")
external num /*enum CullFace*/ get CullFaceBack;
@JS("THREE.CullFaceFront")
external num /*enum CullFace*/ get CullFaceFront;
@JS("THREE.CullFaceFrontBack")
external num /*enum CullFace*/ get CullFaceFrontBack;

@JS("THREE.FrontFaceDirection")
class FrontFaceDirection {}

@JS("THREE.FrontFaceDirectionCW")
external num /*enum FrontFaceDirection*/ get FrontFaceDirectionCW;
@JS("THREE.FrontFaceDirectionCCW")
external num /*enum FrontFaceDirection*/ get FrontFaceDirectionCCW;

/// Shadowing Type
@JS("THREE.ShadowMapType")
class ShadowMapType {}

@JS("THREE.BasicShadowMap")
external num /*enum ShadowMapType*/ get BasicShadowMap;
@JS("THREE.PCFShadowMap")
external num /*enum ShadowMapType*/ get PCFShadowMap;
@JS("THREE.PCFSoftShadowMap")
external num /*enum ShadowMapType*/ get PCFSoftShadowMap;

/// MATERIAL CONSTANTS
/// side
@JS("THREE.Side")
class Side {}

@JS("THREE.FrontSide")
external num /*enum Side*/ get FrontSide;
@JS("THREE.BackSide")
external num /*enum Side*/ get BackSide;
@JS("THREE.DoubleSide")
external num /*enum Side*/ get DoubleSide;

/// shading
@JS("THREE.Shading")
class Shading {}

@JS("THREE.FlatShading")
external num /*enum Shading*/ get FlatShading;
@JS("THREE.SmoothShading")
external num /*enum Shading*/ get SmoothShading;

/// colors
@JS("THREE.Colors")
class Colors {}

@JS("THREE.NoColors")
external num /*enum Colors*/ get NoColors;
@JS("THREE.FaceColors")
external num /*enum Colors*/ get FaceColors;
@JS("THREE.VertexColors")
external num /*enum Colors*/ get VertexColors;

/// blending modes
@JS("THREE.Blending")
class Blending {}

@JS("THREE.NoBlending")
external num /*enum Blending*/ get NoBlending;
@JS("THREE.NormalBlending")
external num /*enum Blending*/ get NormalBlending;
@JS("THREE.AdditiveBlending")
external num /*enum Blending*/ get AdditiveBlending;
@JS("THREE.SubtractiveBlending")
external num /*enum Blending*/ get SubtractiveBlending;
@JS("THREE.MultiplyBlending")
external num /*enum Blending*/ get MultiplyBlending;
@JS("THREE.CustomBlending")
external num /*enum Blending*/ get CustomBlending;

/// custom blending equations
/// (numbers start from 100 not to clash with other
/// mappings to OpenGL constants defined in Texture.js)
@JS("THREE.BlendingEquation")
class BlendingEquation {}

@JS("THREE.AddEquation")
external num /*enum BlendingEquation*/ get AddEquation;
@JS("THREE.SubtractEquation")
external num /*enum BlendingEquation*/ get SubtractEquation;
@JS("THREE.ReverseSubtractEquation")
external num /*enum BlendingEquation*/ get ReverseSubtractEquation;
@JS("THREE.MinEquation")
external num /*enum BlendingEquation*/ get MinEquation;
@JS("THREE.MaxEquation")
external num /*enum BlendingEquation*/ get MaxEquation;

/// custom blending destination factors
@JS("THREE.BlendingDstFactor")
class BlendingDstFactor {}

@JS("THREE.ZeroFactor")
external num /*enum BlendingDstFactor*/ get ZeroFactor;
@JS("THREE.OneFactor")
external num /*enum BlendingDstFactor*/ get OneFactor;
@JS("THREE.SrcColorFactor")
external num /*enum BlendingDstFactor*/ get SrcColorFactor;
@JS("THREE.OneMinusSrcColorFactor")
external num /*enum BlendingDstFactor*/ get OneMinusSrcColorFactor;
@JS("THREE.SrcAlphaFactor")
external num /*enum BlendingDstFactor*/ get SrcAlphaFactor;
@JS("THREE.OneMinusSrcAlphaFactor")
external num /*enum BlendingDstFactor*/ get OneMinusSrcAlphaFactor;
@JS("THREE.DstAlphaFactor")
external num /*enum BlendingDstFactor*/ get DstAlphaFactor;
@JS("THREE.OneMinusDstAlphaFactor")
external num /*enum BlendingDstFactor*/ get OneMinusDstAlphaFactor;

/// custom blending src factors
@JS("THREE.BlendingSrcFactor")
class BlendingSrcFactor {}

@JS("THREE.DstColorFactor")
external num /*enum BlendingSrcFactor*/ get DstColorFactor;
@JS("THREE.OneMinusDstColorFactor")
external num /*enum BlendingSrcFactor*/ get OneMinusDstColorFactor;
@JS("THREE.SrcAlphaSaturateFactor")
external num /*enum BlendingSrcFactor*/ get SrcAlphaSaturateFactor;

/// depth modes
@JS("THREE.DepthModes")
class DepthModes {}

@JS("THREE.NeverDepth")
external num /*enum DepthModes*/ get NeverDepth;
@JS("THREE.AlwaysDepth")
external num /*enum DepthModes*/ get AlwaysDepth;
@JS("THREE.LessDepth")
external num /*enum DepthModes*/ get LessDepth;
@JS("THREE.LessEqualDepth")
external num /*enum DepthModes*/ get LessEqualDepth;
@JS("THREE.EqualDepth")
external num /*enum DepthModes*/ get EqualDepth;
@JS("THREE.GreaterEqualDepth")
external num /*enum DepthModes*/ get GreaterEqualDepth;
@JS("THREE.GreaterDepth")
external num /*enum DepthModes*/ get GreaterDepth;
@JS("THREE.NotEqualDepth")
external num /*enum DepthModes*/ get NotEqualDepth;

/// TEXTURE CONSTANTS
/// Operations
@JS("THREE.Combine")
class Combine {}

@JS("THREE.MultiplyOperation")
external num /*enum Combine*/ get MultiplyOperation;
@JS("THREE.MixOperation")
external num /*enum Combine*/ get MixOperation;
@JS("THREE.AddOperation")
external num /*enum Combine*/ get AddOperation;

/// Tone Mapping modes
@JS("THREE.ToneMapping")
class ToneMapping {}

@JS("THREE.NoToneMapping")
external num /*enum ToneMapping*/ get NoToneMapping;
@JS("THREE.LinearToneMapping")
external num /*enum ToneMapping*/ get LinearToneMapping;
@JS("THREE.ReinhardToneMapping")
external num /*enum ToneMapping*/ get ReinhardToneMapping;
@JS("THREE.Uncharted2ToneMapping")
external num /*enum ToneMapping*/ get Uncharted2ToneMapping;
@JS("THREE.CineonToneMapping")
external num /*enum ToneMapping*/ get CineonToneMapping;

/// Mapping modes
@JS("THREE.Mapping")
class Mapping {}

@JS("THREE.UVMapping")
external num /*enum Mapping*/ get UVMapping;
@JS("THREE.CubeReflectionMapping")
external num /*enum Mapping*/ get CubeReflectionMapping;
@JS("THREE.CubeRefractionMapping")
external num /*enum Mapping*/ get CubeRefractionMapping;
@JS("THREE.EquirectangularReflectionMapping")
external num /*enum Mapping*/ get EquirectangularReflectionMapping;
@JS("THREE.EquirectangularRefractionMapping")
external num /*enum Mapping*/ get EquirectangularRefractionMapping;
@JS("THREE.SphericalReflectionMapping")
external num /*enum Mapping*/ get SphericalReflectionMapping;
@JS("THREE.CubeUVReflectionMapping")
external num /*enum Mapping*/ get CubeUVReflectionMapping;
@JS("THREE.CubeUVRefractionMapping")
external num /*enum Mapping*/ get CubeUVRefractionMapping;

/// Wrapping modes
@JS("THREE.Wrapping")
class Wrapping {}

@JS("THREE.RepeatWrapping")
external num /*enum Wrapping*/ get RepeatWrapping;
@JS("THREE.ClampToEdgeWrapping")
external num /*enum Wrapping*/ get ClampToEdgeWrapping;
@JS("THREE.MirroredRepeatWrapping")
external num /*enum Wrapping*/ get MirroredRepeatWrapping;

/// Filters
@JS("THREE.TextureFilter")
class TextureFilter {}

@JS("THREE.NearestFilter")
external num /*enum TextureFilter*/ get NearestFilter;
@JS("THREE.NearestMipMapNearestFilter")
external num /*enum TextureFilter*/ get NearestMipMapNearestFilter;
@JS("THREE.NearestMipMapLinearFilter")
external num /*enum TextureFilter*/ get NearestMipMapLinearFilter;
@JS("THREE.LinearFilter")
external num /*enum TextureFilter*/ get LinearFilter;
@JS("THREE.LinearMipMapNearestFilter")
external num /*enum TextureFilter*/ get LinearMipMapNearestFilter;
@JS("THREE.LinearMipMapLinearFilter")
external num /*enum TextureFilter*/ get LinearMipMapLinearFilter;

/// Data types
@JS("THREE.TextureDataType")
class TextureDataType {}

@JS("THREE.UnsignedByteType")
external num /*enum TextureDataType*/ get UnsignedByteType;
@JS("THREE.ByteType")
external num /*enum TextureDataType*/ get ByteType;
@JS("THREE.ShortType")
external num /*enum TextureDataType*/ get ShortType;
@JS("THREE.UnsignedShortType")
external num /*enum TextureDataType*/ get UnsignedShortType;
@JS("THREE.IntType")
external num /*enum TextureDataType*/ get IntType;
@JS("THREE.UnsignedIntType")
external num /*enum TextureDataType*/ get UnsignedIntType;
@JS("THREE.FloatType")
external num /*enum TextureDataType*/ get FloatType;
@JS("THREE.HalfFloatType")
external num /*enum TextureDataType*/ get HalfFloatType;

/// Pixel types
@JS("THREE.PixelType")
class PixelType {}

@JS("THREE.UnsignedShort4444Type")
external num /*enum PixelType*/ get UnsignedShort4444Type;
@JS("THREE.UnsignedShort5551Type")
external num /*enum PixelType*/ get UnsignedShort5551Type;
@JS("THREE.UnsignedShort565Type")
external num /*enum PixelType*/ get UnsignedShort565Type;
@JS("THREE.UnsignedInt248Type")
external num /*enum PixelType*/ get UnsignedInt248Type;

/// Pixel formats
@JS("THREE.PixelFormat")
class PixelFormat {}

@JS("THREE.AlphaFormat")
external num /*enum PixelFormat*/ get AlphaFormat;
@JS("THREE.RGBFormat")
external num /*enum PixelFormat*/ get RGBFormat;
@JS("THREE.RGBAFormat")
external num /*enum PixelFormat*/ get RGBAFormat;
@JS("THREE.LuminanceFormat")
external num /*enum PixelFormat*/ get LuminanceFormat;
@JS("THREE.LuminanceAlphaFormat")
external num /*enum PixelFormat*/ get LuminanceAlphaFormat;
@JS("THREE.RGBEFormat")
external num /*enum PixelFormat*/ get RGBEFormat;
@JS("THREE.DepthFormat")
external num /*enum PixelFormat*/ get DepthFormat;
@JS("THREE.DepthStencilFormat")
external num /*enum PixelFormat*/ get DepthStencilFormat;

/// Compressed texture formats
/// DDS / ST3C Compressed texture formats
@JS("THREE.CompressedPixelFormat")
class CompressedPixelFormat {}

@JS("THREE.RGB_S3TC_DXT1_Format")
external num /*enum CompressedPixelFormat*/ get RGB_S3TC_DXT1_Format;
@JS("THREE.RGBA_S3TC_DXT1_Format")
external num /*enum CompressedPixelFormat*/ get RGBA_S3TC_DXT1_Format;
@JS("THREE.RGBA_S3TC_DXT3_Format")
external num /*enum CompressedPixelFormat*/ get RGBA_S3TC_DXT3_Format;
@JS("THREE.RGBA_S3TC_DXT5_Format")
external num /*enum CompressedPixelFormat*/ get RGBA_S3TC_DXT5_Format;

/// PVRTC compressed texture formats
@JS("THREE.RGB_PVRTC_4BPPV1_Format")
external num /*enum CompressedPixelFormat*/ get RGB_PVRTC_4BPPV1_Format;
@JS("THREE.RGB_PVRTC_2BPPV1_Format")
external num /*enum CompressedPixelFormat*/ get RGB_PVRTC_2BPPV1_Format;
@JS("THREE.RGBA_PVRTC_4BPPV1_Format")
external num /*enum CompressedPixelFormat*/ get RGBA_PVRTC_4BPPV1_Format;
@JS("THREE.RGBA_PVRTC_2BPPV1_Format")
external num /*enum CompressedPixelFormat*/ get RGBA_PVRTC_2BPPV1_Format;

/// ETC compressed texture formats
@JS("THREE.RGB_ETC1_Format")
external num /*enum CompressedPixelFormat*/ get RGB_ETC1_Format;

/// Loop styles for AnimationAction
@JS("THREE.AnimationActionLoopStyles")
class AnimationActionLoopStyles {}

@JS("THREE.LoopOnce")
external num /*enum AnimationActionLoopStyles*/ get LoopOnce;
@JS("THREE.LoopRepeat")
external num /*enum AnimationActionLoopStyles*/ get LoopRepeat;
@JS("THREE.LoopPingPong")
external num /*enum AnimationActionLoopStyles*/ get LoopPingPong;

/// Interpolation
@JS("THREE.InterpolationModes")
class InterpolationModes {}

@JS("THREE.InterpolateDiscrete")
external num /*enum InterpolationModes*/ get InterpolateDiscrete;
@JS("THREE.InterpolateLinear")
external num /*enum InterpolationModes*/ get InterpolateLinear;
@JS("THREE.InterpolateSmooth")
external num /*enum InterpolationModes*/ get InterpolateSmooth;

/// Interpolant ending modes
@JS("THREE.InterpolationEndingModes")
class InterpolationEndingModes {}

@JS("THREE.ZeroCurvatureEnding")
external num /*enum InterpolationEndingModes*/ get ZeroCurvatureEnding;
@JS("THREE.ZeroSlopeEnding")
external num /*enum InterpolationEndingModes*/ get ZeroSlopeEnding;
@JS("THREE.WrapAroundEnding")
external num /*enum InterpolationEndingModes*/ get WrapAroundEnding;

/// Triangle Draw modes
@JS("THREE.TrianglesDrawModes")
class TrianglesDrawModes {}

@JS("THREE.TrianglesDrawModesMode")
external num /*enum TrianglesDrawModes*/ get TrianglesDrawModesMode;
@JS("THREE.TriangleStripDrawMode")
external num /*enum TrianglesDrawModes*/ get TriangleStripDrawMode;
@JS("THREE.TriangleFanDrawMode")
external num /*enum TrianglesDrawModes*/ get TriangleFanDrawMode;

/// Texture Encodings
@JS("THREE.TextureEncoding")
class TextureEncoding {}

@JS("THREE.LinearEncoding")
external num /*enum TextureEncoding*/ get LinearEncoding;
@JS("THREE.sRGBEncoding")
external num /*enum TextureEncoding*/ get sRGBEncoding;
@JS("THREE.GammaEncoding")
external num /*enum TextureEncoding*/ get GammaEncoding;
@JS("THREE.RGBEEncoding")
external num /*enum TextureEncoding*/ get RGBEEncoding;
@JS("THREE.LogLuvEncoding")
external num /*enum TextureEncoding*/ get LogLuvEncoding;
@JS("THREE.RGBM7Encoding")
external num /*enum TextureEncoding*/ get RGBM7Encoding;
@JS("THREE.RGBM16Encoding")
external num /*enum TextureEncoding*/ get RGBM16Encoding;
@JS("THREE.RGBDEncoding")
external num /*enum TextureEncoding*/ get RGBDEncoding;

/// Depth packing strategies
@JS("THREE.DepthPackingStrategies")
class DepthPackingStrategies {}

@JS("THREE.BasicDepthPacking")
external num /*enum DepthPackingStrategies*/ get BasicDepthPacking;
@JS("THREE.RGBADepthPacking")
external num /*enum DepthPackingStrategies*/ get RGBADepthPacking;

/// log handlers
@JS("THREE.warn")
external void warn(
    [dynamic message,
    dynamic optionalParams1,
    dynamic optionalParams2,
    dynamic optionalParams3,
    dynamic optionalParams4,
    dynamic optionalParams5]);
@JS("THREE.error")
external void error(
    [dynamic message,
    dynamic optionalParams1,
    dynamic optionalParams2,
    dynamic optionalParams3,
    dynamic optionalParams4,
    dynamic optionalParams5]);
@JS("THREE.log")
external void log(
    [dynamic message,
    dynamic optionalParams1,
    dynamic optionalParams2,
    dynamic optionalParams3,
    dynamic optionalParams4,
    dynamic optionalParams5]);

/// Animation ////////////////////////////////////////////////////////////////////////////////////////
@JS("THREE.AnimationAction")
class AnimationAction {
  // @Ignore
  AnimationAction.fakeConstructor$();
  external bool get loop;
  external set loop(bool v);
  external num get time;
  external set time(num v);
  external num get timeScale;
  external set timeScale(num v);
  external num get weight;
  external set weight(num v);
  external num get repetitions;
  external set repetitions(num v);
  external bool get paused;
  external set paused(bool v);
  external bool get enabled;
  external set enabled(bool v);
  external bool get clampWhenFinished;
  external set clampWhenFinished(bool v);
  external bool get zeroSlopeAtStart;
  external set zeroSlopeAtStart(bool v);
  external bool get zeroSlopeAtEnd;
  external set zeroSlopeAtEnd(bool v);
  external AnimationAction play();
  external AnimationAction stop();
  external AnimationAction reset();
  external bool isRunning();
  external AnimationAction startAt(num time);
  external AnimationAction setLoop(bool mode, num repetitions);
  external AnimationAction setEffectiveWeight(num weight);
  external num getEffectiveWeight();
  external AnimationAction fadeIn(num duration);
  external AnimationAction fadeOut(num duration);
  external AnimationAction crossFadeFrom(
      AnimationAction fadeOutAction, num duration, bool warp);
  external AnimationAction crossFadeTo(
      AnimationAction fadeInAction, num duration, bool warp);
  external AnimationAction stopFading();
  external AnimationAction setEffectiveTimeScale(num timeScale);
  external num getEffectiveTimeScale();
  external AnimationAction setDuration(num duration);
  external AnimationAction syncWith(AnimationAction action);
  external AnimationAction halt(num duration);
  external AnimationAction warp(
      num statTimeScale, num endTimeScale, num duration);
  external AnimationAction stopWarping();
  external AnimationMixer getMixer();
  external AnimationClip getClip();
  external dynamic getRoot();
}

@JS("THREE.AnimationClip")
class AnimationClip {
  // @Ignore
  AnimationClip.fakeConstructor$();
  external factory AnimationClip(
      [String name, num duration, List<KeyframeTrack> tracks]);
  external String get name;
  external set name(String v);
  external List<KeyframeTrack> get tracks;
  external set tracks(List<KeyframeTrack> v);
  external num get duration;
  external set duration(num v);
  external String get uuid;
  external set uuid(String v);
  external List<dynamic> get results;
  external set results(List<dynamic> v);
  external void resetDuration();
  external AnimationClip trim();
  external AnimationClip optimize();
  external static AnimationClip CreateFromMorphTargetSequence(
      String name, List<MorphTarget> morphTargetSequence, num fps, bool noLoop);
  external static AnimationClip findByName(
      AnimationClip clipArray, String name);
  external static List<AnimationClip> CreateClipsFromMorphTargetSequences(
      List<MorphTarget> morphTargets, num fps, bool noLoop);
  external static AnimationClip parse(dynamic json);
  external static AnimationClip parseAnimation(
      dynamic animation, List<Bone> bones, String nodeName);
  external static dynamic toJSON();
}

@JS("THREE.AnimationMixer")
class AnimationMixer extends EventDispatcher {
  // @Ignore
  AnimationMixer.fakeConstructor$() : super.fakeConstructor$();
  external factory AnimationMixer(dynamic root);
  external num get time;
  external set time(num v);
  external num get timeScale;
  external set timeScale(num v);
  external AnimationAction clipAction(AnimationClip clip, [dynamic root]);
  external AnimationAction existingAction(AnimationClip clip, [dynamic root]);
  external AnimationMixer stopAllAction(AnimationClip clip, [dynamic root]);
  external AnimationMixer update(num deltaTime);
  external dynamic getRoot();
  external void uncacheClip(AnimationClip clip);
  external void uncacheRoot(dynamic root);
  external void uncacheAction(AnimationClip clip, [dynamic root]);
}

@JS("THREE.AnimationObjectGroup")
class AnimationObjectGroup {
  // @Ignore
  AnimationObjectGroup.fakeConstructor$();
  external factory AnimationObjectGroup(
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external String get uuid;
  external set uuid(String v);
  external dynamic
      /*{
            bindingsPerObject: number;
            objects: {
                total: number;
                inUse: number;
            }
        }*/
      get stats;
  external set stats(
      dynamic /*{
            bindingsPerObject: number;
            objects: {
                total: number;
                inUse: number;
            }
        }*/
      v);
  external void add(
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external void remove(
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external void uncache(
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
}

// Module AnimationUtils
@JS("THREE.AnimationUtils.arraySlice")
external dynamic arraySlice(dynamic array, num from, num to);
@JS("THREE.AnimationUtils.convertArray")
external dynamic convertArray(dynamic array, dynamic type, bool forceClone);
@JS("THREE.AnimationUtils.isTypedArray")
external bool isTypedArray(dynamic object);
@JS("THREE.AnimationUtils.getKeyFrameOrder")
external List<num> getKeyFrameOrder(num times);
@JS("THREE.AnimationUtils.sortedArray")
external List<dynamic> sortedArray(
    List<dynamic> values, num stride, List<num> order);
@JS("THREE.AnimationUtils.flattenJSON")
external void flattenJSON(List<String> jsonKeys, List<dynamic> times,
    List<dynamic> values, String valuePropertyName);

// End module AnimationUtils
@JS("THREE.KeyframeTrack")
class KeyframeTrack {
  // @Ignore
  KeyframeTrack.fakeConstructor$();
  external factory KeyframeTrack(String name, List<dynamic> times,
      List<dynamic> values, num /*enum InterpolationModes*/ interpolation);
  external String get name;
  external set name(String v);
  external List<dynamic> get times;
  external set times(List<dynamic> v);
  external List<dynamic> get values;
  external set values(List<dynamic> v);
  external String get ValueTypeName;
  external set ValueTypeName(String v);
  external Float32List get TimeBufferType;
  external set TimeBufferType(Float32List v);
  external Float32List get ValueBufferType;
  external set ValueBufferType(Float32List v);
  external num /*enum InterpolationModes*/ get DefaultInterpolation;
  external set DefaultInterpolation(num /*enum InterpolationModes*/ v);
  external DiscreteInterpolant InterpolantFactoryMethodDiscrete(dynamic result);
  external LinearInterpolant InterpolantFactoryMethodLinear(dynamic result);
  external CubicInterpolant InterpolantFactoryMethodSmooth(dynamic result);
  external void setInterpolation(num /*enum InterpolationModes*/ interpolation);
  external num /*enum InterpolationModes*/ getInterpolation();
  external num getValuesize();
  external KeyframeTrack shift(num timeOffset);
  external KeyframeTrack scale(num timeScale);
  external KeyframeTrack trim(num startTime, num endTime);
  external bool validate();
  external KeyframeTrack optimize();
  external static KeyframeTrack parse(dynamic json);
  external static dynamic toJSON(KeyframeTrack track);
}

@JS("THREE.PropertyBinding")
class PropertyBinding {
  // @Ignore
  PropertyBinding.fakeConstructor$();
  external factory PropertyBinding(dynamic rootNode, String path,
      [dynamic parsedPath]);
  external String get path;
  external set path(String v);
  external dynamic get parsedPath;
  external set parsedPath(dynamic v);
  external dynamic get node;
  external set node(dynamic v);
  external dynamic get rootNode;
  external set rootNode(dynamic v);
  external dynamic getValue(dynamic targetArray, num offset);
  external void setValue(dynamic sourceArray, num offset);
  external void bind();
  external void unbind();
  external dynamic /*JSMap of <String,num>*/ get BindingType;
  external set BindingType(dynamic /*JSMap of <String,num>*/ v);
  external dynamic /*JSMap of <String,num>*/ get Versioning;
  external set Versioning(dynamic /*JSMap of <String,num>*/ v);
  external List<Function> get GetterByBindingType;
  external set GetterByBindingType(List<Function> v);
  external List<List<Function>> get SetterByBindingTypeAndVersioning;
  external set SetterByBindingTypeAndVersioning(List<List<Function>> v);
  external static dynamic /*PropertyBinding|Composite*/ create(
      dynamic root, dynamic path,
      [dynamic parsedPath]);
  external static dynamic parseTrackName(String trackName);
  external static dynamic findNode(dynamic root, String nodeName);
}

// Module PropertyBinding
@JS("THREE.PropertyBinding.Composite")
class Composite {
  // @Ignore
  Composite.fakeConstructor$();
  external factory Composite(dynamic targetGroup, dynamic path,
      [dynamic parsedPath]);
  external dynamic getValue(dynamic array, num offset);
  external void setValue(dynamic array, num offset);
  external void bind();
  external void unbind();
}

// End module PropertyBinding
@JS("THREE.PropertyMixer")
class PropertyMixer {
  // @Ignore
  PropertyMixer.fakeConstructor$();
  external factory PropertyMixer(
      dynamic binding, String typeName, num valueSize);
  external dynamic get binding;
  external set binding(dynamic v);
  external num get valueSize;
  external set valueSize(num v);
  external dynamic get buffer;
  external set buffer(dynamic v);
  external num get cumulativeWeight;
  external set cumulativeWeight(num v);
  external num get useCount;
  external set useCount(num v);
  external num get referenceCount;
  external set referenceCount(num v);
  external void accumulate(num accuIndex, num weight);
  external void apply(num accuIndex);
  external void saveOriginalState();
  external void restoreOriginalState();
}

@JS("THREE.BooleanKeyframeTrack")
class BooleanKeyframeTrack extends KeyframeTrack {
  // @Ignore
  BooleanKeyframeTrack.fakeConstructor$() : super.fakeConstructor$();
  external factory BooleanKeyframeTrack(
      String name, List<dynamic> times, List<dynamic> values);
}

@JS("THREE.ColorKeyframeTrack")
class ColorKeyframeTrack extends KeyframeTrack {
  // @Ignore
  ColorKeyframeTrack.fakeConstructor$() : super.fakeConstructor$();
  external factory ColorKeyframeTrack(String name, List<dynamic> times,
      List<dynamic> values, num /*enum InterpolationModes*/ interpolation);
}

@JS("THREE.NumberKeyframeTrack")
class NumberKeyframeTrack extends KeyframeTrack {
  // @Ignore
  NumberKeyframeTrack.fakeConstructor$() : super.fakeConstructor$();
  external factory NumberKeyframeTrack(String name, List<dynamic> times,
      List<dynamic> values, num /*enum InterpolationModes*/ interpolation);
}

@JS("THREE.QuaternionKeyframeTrack")
class QuaternionKeyframeTrack extends KeyframeTrack {
  // @Ignore
  QuaternionKeyframeTrack.fakeConstructor$() : super.fakeConstructor$();
  external factory QuaternionKeyframeTrack(String name, List<dynamic> times,
      List<dynamic> values, num /*enum InterpolationModes*/ interpolation);
}

@JS("THREE.StringKeyframeTrack")
class StringKeyframeTrack extends KeyframeTrack {
  // @Ignore
  StringKeyframeTrack.fakeConstructor$() : super.fakeConstructor$();
  external factory StringKeyframeTrack(String name, List<dynamic> times,
      List<dynamic> values, num /*enum InterpolationModes*/ interpolation);
}

@JS("THREE.VectorKeyframeTrack")
class VectorKeyframeTrack extends KeyframeTrack {
  // @Ignore
  VectorKeyframeTrack.fakeConstructor$() : super.fakeConstructor$();
  external factory VectorKeyframeTrack(String name, List<dynamic> times,
      List<dynamic> values, num /*enum InterpolationModes*/ interpolation);
}

/// Cameras ////////////////////////////////////////////////////////////////////////////////////////
/// Abstract base class for cameras. This class should always be inherited when you build a new camera.
@JS("THREE.Camera")
class Camera extends Object3D {
  // @Ignore
  Camera.fakeConstructor$() : super.fakeConstructor$();

  /// This constructor sets following properties to the correct type: matrixWorldInverse, projectionMatrix and projectionMatrixInverse.
  external factory Camera();

  /// This is the inverse of matrixWorld. MatrixWorld contains the Matrix which has the world transform of the Camera.
  external Matrix4 get matrixWorldInverse;
  external set matrixWorldInverse(Matrix4 v);

  /// This is the matrix which contains the projection.
  external Matrix4 get projectionMatrix;
  external set projectionMatrix(Matrix4 v);
  external Vector3 getWorldDirection([Vector3 optionalTarget]);

  /// This make the camera look at the vector position in local space.
  external void lookAt(Vector3 vector);
  external Camera clone();
  external Camera copy([Camera camera]);
}

@JS("THREE.CubeCamera")
class CubeCamera extends Object3D {
  // @Ignore
  CubeCamera.fakeConstructor$() : super.fakeConstructor$();
  external factory CubeCamera([num near, num far, num cubeResolution]);
  external WebGLRenderTargetCube get renderTarget;
  external set renderTarget(WebGLRenderTargetCube v);
  external void updateCubeMap(Renderer renderer, Scene scene);
}

/// Camera with orthographic projection
/// @example
/// var camera = new THREE.OrthographicCamera( width / - 2, width / 2, height / 2, height / - 2, 1, 1000 );
/// scene.add( camera );
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/cameras/OrthographicCamera.js">src/cameras/OrthographicCamera.js</a>
@JS("THREE.OrthographicCamera")
class OrthographicCamera extends Camera {
  // @Ignore
  OrthographicCamera.fakeConstructor$() : super.fakeConstructor$();
  external factory OrthographicCamera(num left, num right, num top, num bottom,
      [num near, num far]);
  external num get zoom;
  external set zoom(num v);
  external dynamic
      /*{
          fullWidth: number,
          fullHeight: number,
          offsetX: number,
          offsetY: number,
          width: number,
          height: number
        }*/
      get view;
  external set view(
      dynamic /*{
          fullWidth: number,
          fullHeight: number,
          offsetX: number,
          offsetY: number,
          width: number,
          height: number
        }*/
      v);

  /// Camera frustum left plane.
  external num get left;
  external set left(num v);

  /// Camera frustum right plane.
  external num get right;
  external set right(num v);

  /// Camera frustum top plane.
  external num get top;
  external set top(num v);

  /// Camera frustum bottom plane.
  external num get bottom;
  external set bottom(num v);

  /// Camera frustum near plane.
  external num get near;
  external set near(num v);

  /// Camera frustum far plane.
  external num get far;
  external set far(num v);

  /// Updates the camera projection matrix. Must be called after change of parameters.
  external void updateProjectionMatrix();
  external void setViewOffset(num fullWidth, num fullHeight, num offsetX,
      num offsetY, num width, num height);
  external void clearViewOffset();
  external OrthographicCamera clone();
  external OrthographicCamera copy(OrthographicCamera source);
  external dynamic toJSON([dynamic meta]);
}

/// Camera with perspective projection.
/// # example
/// var camera = new THREE.PerspectiveCamera( 45, width / height, 1, 1000 );
/// scene.add( camera );
/// @source https://github.com/mrdoob/three.js/blob/master/src/cameras/PerspectiveCamera.js
@JS("THREE.PerspectiveCamera")
class PerspectiveCamera extends Camera {
  // @Ignore
  PerspectiveCamera.fakeConstructor$() : super.fakeConstructor$();
  external factory PerspectiveCamera([num fov, num aspect, num near, num far]);
  external num get zoom;
  external set zoom(num v);

  /// Camera frustum vertical field of view, from bottom to top of view, in degrees.
  external num get fov;
  external set fov(num v);

  /// Camera frustum aspect ratio, window width divided by window height.
  external num get aspect;
  external set aspect(num v);

  /// Camera frustum near plane.
  external num get near;
  external set near(num v);

  /// Camera frustum far plane.
  external num get far;
  external set far(num v);
  external num get focus;
  external set focus(num v);
  external dynamic
      /*{
            fullWidth: number,
            fullHeight: number,
            offsetX: number,
            offsetY: number,
            width: number,
            height: number
        }*/
      get view;
  external set view(
      dynamic /*{
            fullWidth: number,
            fullHeight: number,
            offsetX: number,
            offsetY: number,
            width: number,
            height: number
        }*/
      v);
  external num get filmGauge;
  external set filmGauge(num v);
  external num get filmOffset;
  external set filmOffset(num v);
  external void setFocalLength(num focalLength);
  external num getFocalLength();
  external num getEffectiveFOV();
  external num getFilmWidth();
  external num getFilmHeight();

  /// Sets an offset in a larger frustum. This is useful for multi-window or multi-monitor/multi-machine setups.
  /// For example, if you have 3x2 monitors and each monitor is 1920x1080 and the monitors are in grid like this:
  /// +---+---+---+
  /// | A | B | C |
  /// +---+---+---+
  /// | D | E | F |
  /// +---+---+---+
  /// then for each monitor you would call it like this:
  /// var w = 1920;
  /// var h = 1080;
  /// var fullWidth = w * 3;
  /// var fullHeight = h * 2;
  /// // A
  /// camera.setViewOffset( fullWidth, fullHeight, w * 0, h * 0, w, h );
  /// // B
  /// camera.setViewOffset( fullWidth, fullHeight, w * 1, h * 0, w, h );
  /// // C
  /// camera.setViewOffset( fullWidth, fullHeight, w * 2, h * 0, w, h );
  /// // D
  /// camera.setViewOffset( fullWidth, fullHeight, w * 0, h * 1, w, h );
  /// // E
  /// camera.setViewOffset( fullWidth, fullHeight, w * 1, h * 1, w, h );
  /// // F
  /// camera.setViewOffset( fullWidth, fullHeight, w * 2, h * 1, w, h ); Note there is no reason monitors have to be the same size or in a grid.
  external void setViewOffset(
      num fullWidth, num fullHeight, num x, num y, num width, num height);
  external void clearViewOffset();

  /// Updates the camera projection matrix. Must be called after change of parameters.
  external void updateProjectionMatrix();
  external PerspectiveCamera clone();
  external dynamic toJSON([dynamic meta]);

  /// deprecated
  external void setLens(num focalLength, [num frameHeight]);
}

@JS("THREE.StereoCamera")
class StereoCamera extends Camera {
  // @Ignore
  StereoCamera.fakeConstructor$() : super.fakeConstructor$();
  external factory StereoCamera();
  external num get aspect;
  external set aspect(num v);
  external PerspectiveCamera get cameraL;
  external set cameraL(PerspectiveCamera v);
  external PerspectiveCamera get cameraR;
  external set cameraR(PerspectiveCamera v);
  external void update(PerspectiveCamera camera);
}

/// Core ///////////////////////////////////////////////////////////////////////////////////////////////
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/BufferAttribute.js">src/core/BufferAttribute.js</a>
@JS("THREE.BufferAttribute")
class BufferAttribute {
  // @Ignore
  BufferAttribute.fakeConstructor$();
  external factory BufferAttribute(ArrayLike<num> array, num itemSize,
      [bool normalized]);
  external String get uuid;
  external set uuid(String v);
  external ArrayLike<num> get array;
  external set array(ArrayLike<num> v);
  external num get itemSize;
  external set itemSize(num v);
  external bool get JS$dynamic;
  external set JS$dynamic(bool v);
  external dynamic /*{offset: number, count: number}*/ get updateRange;
  external set updateRange(dynamic /*{offset: number, count: number}*/ v);
  external num get version;
  external set version(num v);
  external bool get normalized;
  external set normalized(bool v);
  external bool get needsUpdate;
  external set needsUpdate(bool v);
  external num get count;
  external set count(num v);
  external BufferAttribute setDynamic(bool JS$dynamic);
  /*external BufferAttribute clone();*/
  /*external BufferAttribute clone();*/
  external BufferAttribute clone();
  external BufferAttribute copy(BufferAttribute source);
  external BufferAttribute copyAt(
      num index1, BufferAttribute attribute, num index2);
  external BufferAttribute copyArray(ArrayLike<num> array);
  external BufferAttribute copyColorsArray(
      List<dynamic /*{r: number, g: number, b: number}*/ > colors);
  external BufferAttribute copyIndicesArray(
      List<dynamic /*{a: number, b: number, c: number}*/ > indices);
  external BufferAttribute copyVector2sArray(
      List<dynamic /*{x: number, y: number}*/ > vectors);
  external BufferAttribute copyVector3sArray(
      List<dynamic /*{x: number, y: number, z: number}*/ > vectors);
  external BufferAttribute copyVector4sArray(
      List<dynamic /*{x: number, y: number, z: number, w: number}*/ > vectors);
  external BufferAttribute JS$set(ArrayLike<num> value, [num offset]);
  external num getX(num index);
  external BufferAttribute setX(num index, num x);
  external num getY(num index);
  external BufferAttribute setY(num index, num y);
  external num getZ(num index);
  external BufferAttribute setZ(num index, num z);
  external num getW(num index);
  external BufferAttribute setW(num index, num z);
  external BufferAttribute setXY(num index, num x, num y);
  external BufferAttribute setXYZ(num index, num x, num y, num z);
  external BufferAttribute setXYZW(num index, num x, num y, num z, num w);
  external num get length;
  external set length(num v);
}

@JS("THREE.Int8Attribute")
class Int8Attribute extends BufferAttribute {
  // @Ignore
  Int8Attribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Int8Attribute(dynamic array, num itemSize);
}

@JS("THREE.Uint8Attribute")
class Uint8Attribute extends BufferAttribute {
  // @Ignore
  Uint8Attribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Uint8Attribute(dynamic array, num itemSize);
}

@JS("THREE.Uint8ClampedAttribute")
class Uint8ClampedAttribute extends BufferAttribute {
  // @Ignore
  Uint8ClampedAttribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Uint8ClampedAttribute(dynamic array, num itemSize);
}

@JS("THREE.Int16Attribute")
class Int16Attribute extends BufferAttribute {
  // @Ignore
  Int16Attribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Int16Attribute(dynamic array, num itemSize);
}

@JS("THREE.Uint16Attribute")
class Uint16Attribute extends BufferAttribute {
  // @Ignore
  Uint16Attribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Uint16Attribute(dynamic array, num itemSize);
}

@JS("THREE.Int32Attribute")
class Int32Attribute extends BufferAttribute {
  // @Ignore
  Int32Attribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Int32Attribute(dynamic array, num itemSize);
}

@JS("THREE.Uint32Attribute")
class Uint32Attribute extends BufferAttribute {
  // @Ignore
  Uint32Attribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Uint32Attribute(dynamic array, num itemSize);
}

@JS("THREE.Float32Attribute")
class Float32Attribute extends BufferAttribute {
  // @Ignore
  Float32Attribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Float32Attribute(dynamic array, num itemSize);
}

@JS("THREE.Float64Attribute")
class Float64Attribute extends BufferAttribute {
  // @Ignore
  Float64Attribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Float64Attribute(dynamic array, num itemSize);
}

/// deprecated, use new THREE.BufferAttribute().setDynamic( true )
@JS("THREE.DynamicBufferAttribute")
class DynamicBufferAttribute extends BufferAttribute {
  // @Ignore
  DynamicBufferAttribute.fakeConstructor$() : super.fakeConstructor$();
}

/// This is a superefficent class for geometries because it saves all data in buffers.
/// It reduces memory costs and cpu cycles. But it is not as easy to work with because of all the nessecary buffer calculations.
/// It is mainly interesting when working with static objects.
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/BufferGeometry.js">src/core/BufferGeometry.js</a>
@JS("THREE.BufferGeometry")
class BufferGeometry extends EventDispatcher {
  // @Ignore
  BufferGeometry.fakeConstructor$() : super.fakeConstructor$();

  /// This creates a new BufferGeometry. It also sets several properties to an default value.
  external factory BufferGeometry();
  external static num get MaxIndex;
  external static set MaxIndex(num v);

  /// Unique number of this buffergeometry instance
  external num get id;
  external set id(num v);
  external String get uuid;
  external set uuid(String v);
  external String get name;
  external set name(String v);
  external String get type;
  external set type(String v);
  external BufferAttribute get index;
  external set index(BufferAttribute v);
  external dynamic /*BufferAttribute|List<InterleavedBufferAttribute>*/ get attributes;
  external set attributes(
      dynamic /*BufferAttribute|List<InterleavedBufferAttribute>*/ v);
  external dynamic get morphAttributes;
  external set morphAttributes(dynamic v);
  external List<
          dynamic /*{start: number, count: number, materialIndex?: number}*/ >
      get groups;
  external set groups(
      List<
          dynamic /*{start: number, count: number, materialIndex?: number}*/ > v);
  external Box3 get boundingBox;
  external set boundingBox(Box3 v);
  external Sphere get boundingSphere;
  external set boundingSphere(Sphere v);
  external dynamic /*{ start: number, count: number }*/ get drawRange;
  external set drawRange(dynamic /*{ start: number, count: number }*/ v);
  external BufferAttribute getIndex();
  external void setIndex(BufferAttribute index);
  /*external BufferGeometry addAttribute(String name, BufferAttribute|InterleavedBufferAttribute attribute);*/
  /*external dynamic addAttribute(dynamic name, dynamic array, dynamic itemSize);*/
  external dynamic /*BufferGeometry|dynamic*/ addAttribute(
      dynamic /*String|dynamic*/ name,
      dynamic /*BufferAttribute|InterleavedBufferAttribute|dynamic*/ attribute_array,
      [dynamic itemSize]);
  external dynamic /*BufferAttribute|InterleavedBufferAttribute*/ getAttribute(
      String name);
  external BufferGeometry removeAttribute(String name);
  external void addGroup(num start, num count, [num materialIndex]);
  external void clearGroups();
  external void setDrawRange(num start, num count);

  /// Bakes matrix transform directly into vertex coordinates.
  external BufferGeometry applyMatrix(Matrix4 matrix);
  external BufferGeometry rotateX(num angle);
  external BufferGeometry rotateY(num angle);
  external BufferGeometry rotateZ(num angle);
  external BufferGeometry translate(num x, num y, num z);
  external BufferGeometry scale(num x, num y, num z);
  external void lookAt(Vector3 v);
  external Vector3 center();
  external void setFromObject(Object3D object);
  external void updateFromObject(Object3D object);
  external BufferGeometry fromGeometry(Geometry geometry, [dynamic settings]);
  external BufferGeometry fromDirectGeometry(DirectGeometry geometry);

  /// Computes bounding box of the geometry, updating Geometry.boundingBox attribute.
  /// Bounding boxes aren't computed by default. They need to be explicitly computed, otherwise they are null.
  external void computeBoundingBox();

  /// Computes bounding sphere of the geometry, updating Geometry.boundingSphere attribute.
  /// Bounding spheres aren't' computed by default. They need to be explicitly computed, otherwise they are null.
  external void computeBoundingSphere();

  /// Computes vertex normals by averaging face normals.
  external void computeVertexNormals();
  external BufferGeometry merge(BufferGeometry geometry, num offset);
  external void normalizeNormals();
  external BufferGeometry toNonIndexed();
  external dynamic toJSON();
  external BufferGeometry clone();
  external BufferGeometry copy(BufferGeometry source);

  /// Disposes the object from memory.
  /// You need to call this when you want the bufferGeometry removed while the application is running.
  external void dispose();

  /// deprecated
  external dynamic get drawcalls;
  external set drawcalls(dynamic v);
  external dynamic get offsets;
  external set offsets(dynamic v);
  external void addIndex(dynamic index);
  external void addDrawCall(dynamic start, dynamic count,
      [dynamic indexOffset]);
  external void clearDrawCalls();
}

/// Object for keeping track of time.
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/Clock.js">src/core/Clock.js</a>
@JS("THREE.Clock")
class Clock {
  // @Ignore
  Clock.fakeConstructor$();
  external factory Clock([bool autoStart]);

  /// If set, starts the clock automatically when the first update is called.
  external bool get autoStart;
  external set autoStart(bool v);

  /// When the clock is running, It holds the starttime of the clock.
  /// This counted from the number of milliseconds elapsed since 1 January 1970 00:00:00 UTC.
  external num get startTime;
  external set startTime(num v);

  /// When the clock is running, It holds the previous time from a update.
  /// This counted from the number of milliseconds elapsed since 1 January 1970 00:00:00 UTC.
  external num get oldTime;
  external set oldTime(num v);

  /// When the clock is running, It holds the time elapsed between the start of the clock to the previous update.
  /// This parameter is in seconds of three decimal places.
  external num get elapsedTime;
  external set elapsedTime(num v);

  /// This property keeps track whether the clock is running or not.
  external bool get running;
  external set running(bool v);

  /// Starts clock.
  external void start();

  /// Stops clock.
  external void stop();

  /// Get the seconds passed since the clock started.
  external num getElapsedTime();

  /// Get the seconds passed since the last call to this method.
  external num getDelta();
}

/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/DirectGeometry.js">src/core/DirectGeometry.js</a>
@JS("THREE.DirectGeometry")
class DirectGeometry extends EventDispatcher {
  // @Ignore
  DirectGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory DirectGeometry();
  external num get id;
  external set id(num v);
  external String get uuid;
  external set uuid(String v);
  external String get name;
  external set name(String v);
  external String get type;
  external set type(String v);
  external List<num> get indices;
  external set indices(List<num> v);
  external List<Vector3> get vertices;
  external set vertices(List<Vector3> v);
  external List<Vector3> get normals;
  external set normals(List<Vector3> v);
  external List<Color> get colors;
  external set colors(List<Color> v);
  external List<Vector2> get uvs;
  external set uvs(List<Vector2> v);
  external List<Vector2> get uvs2;
  external set uvs2(List<Vector2> v);
  external List<dynamic /*{start: number, materialIndex: number}*/ > get groups;
  external set groups(
      List<dynamic /*{start: number, materialIndex: number}*/ > v);
  external List<MorphTarget> get morphTargets;
  external set morphTargets(List<MorphTarget> v);
  external List<num> get skinWeights;
  external set skinWeights(List<num> v);
  external List<num> get skinIndices;
  external set skinIndices(List<num> v);
  external Box3 get boundingBox;
  external set boundingBox(Box3 v);
  external Sphere get boundingSphere;
  external set boundingSphere(Sphere v);
  external bool get verticesNeedUpdate;
  external set verticesNeedUpdate(bool v);
  external bool get normalsNeedUpdate;
  external set normalsNeedUpdate(bool v);
  external bool get colorsNeedUpdate;
  external set colorsNeedUpdate(bool v);
  external bool get uvsNeedUpdate;
  external set uvsNeedUpdate(bool v);
  external bool get groupsNeedUpdate;
  external set groupsNeedUpdate(bool v);
  external void computeBoundingBox();
  external void computeBoundingSphere();
  external void computeGroups(Geometry geometry);
  external DirectGeometry fromGeometry(Geometry geometry);
  external void dispose();

  /// EventDispatcher mixins
  external void addEventListener(String type, void listener(Event event));
  external void hasEventListener(String type, void listener(Event event));
  external void removeEventListener(String type, void listener(Event event));
  external void dispatchEvent(
      dynamic /*{ type: string; [attachment: string]: any; }*/ event);
}

/// JavaScript events for custom objects
/// # Example
/// var Car = function () {
/// EventDispatcher.call( this );
/// this.start = function () {
/// this.dispatchEvent( { type: 'start', message: 'vroom vroom!' } );
/// };
/// };
/// var car = new Car();
/// car.addEventListener( 'start', function ( event ) {
/// alert( event.message );
/// } );
/// car.start();
/// @source src/core/EventDispatcher.js
@JS("THREE.EventDispatcher")
class EventDispatcher {
  // @Ignore
  EventDispatcher.fakeConstructor$();

  /// Creates eventDispatcher object. It needs to be call with '.call' to add the functionality to an object.
  external factory EventDispatcher();

  /// Adds a listener to an event type.
  external void addEventListener(String type, void listener(Event event));

  /// Adds a listener to an event type.
  external void hasEventListener(String type, void listener(Event event));

  /// Removes a listener from an event type.
  external void removeEventListener(String type, void listener(Event event));

  /// Fire an event type.
  external void dispatchEvent(
      dynamic /*{ type: string; [attachment: string]: any; }*/ event);

  /// deprecated
  external void apply(dynamic target);
}

@anonymous
@JS()
abstract class Event {
  external String get type;
  external set type(String v);
  external dynamic get target;
  external set target(dynamic v);
  external factory Event({String type, dynamic target});
}

/// Triangle face.
/// # Example
/// var normal = new THREE.Vector3( 0, 1, 0 );
/// var color = new THREE.Color( 0xffaa00 );
/// var face = new THREE.Face3( 0, 1, 2, normal, color, 0 );
/// @source https://github.com/mrdoob/three.js/blob/master/src/core/Face3.js
@JS("THREE.Face3")
class Face3 {
  // @Ignore
  Face3.fakeConstructor$();
  /*external factory Face3(num a, num b, num c, [Vector3 normal, Color color, num materialIndex]);*/
  /*external factory Face3(num a, num b, num c, [Vector3 normal, List<Color> vertexColors, num materialIndex]);*/
  /*external factory Face3(num a, num b, num c, [List<Vector3> vertexNormals, Color color, num materialIndex]);*/
  /*external factory Face3(num a, num b, num c, [List<Vector3> vertexNormals, List<Color> vertexColors, num materialIndex]);*/
  external factory Face3(num a, num b, num c,
      [dynamic /*Vector3|List<Vector3>*/ normal_vertexNormals,
      dynamic /*Color|List<Color>*/ color_vertexColors,
      num materialIndex]);

  /// Vertex A index.
  external num get a;
  external set a(num v);

  /// Vertex B index.
  external num get b;
  external set b(num v);

  /// Vertex C index.
  external num get c;
  external set c(num v);

  /// Face normal.
  external Vector3 get normal;
  external set normal(Vector3 v);

  /// Array of 4 vertex normals.
  external List<Vector3> get vertexNormals;
  external set vertexNormals(List<Vector3> v);

  /// Face color.
  external Color get color;
  external set color(Color v);

  /// Array of 4 vertex normals.
  external List<Color> get vertexColors;
  external set vertexColors(List<Color> v);

  /// Material index (points to [Geometry.materials]).
  external num get materialIndex;
  external set materialIndex(num v);
  external Face3 clone();
  external Face3 copy(Face3 source);
}

@JS("THREE.Face4")
class Face4 extends Face3 {
  // @Ignore
  Face4.fakeConstructor$() : super.fakeConstructor$();
}

@anonymous
@JS()
abstract class MorphTarget {
  external String get name;
  external set name(String v);
  external List<Vector3> get vertices;
  external set vertices(List<Vector3> v);
  external factory MorphTarget({String name, List<Vector3> vertices});
}

@anonymous
@JS()
abstract class MorphColor {
  external String get name;
  external set name(String v);
  external List<Color> get colors;
  external set colors(List<Color> v);
  external factory MorphColor({String name, List<Color> colors});
}

@anonymous
@JS()
abstract class MorphNormals {
  external String get name;
  external set name(String v);
  external List<Vector3> get normals;
  external set normals(List<Vector3> v);
  external factory MorphNormals({String name, List<Vector3> normals});
}

@JS("THREE.GeometryIdCount")
external num get GeometryIdCount;
@JS("THREE.GeometryIdCount")
external set GeometryIdCount(num v);

/// Base class for geometries
/// # Example
/// var geometry = new THREE.Geometry();
/// geometry.vertices.push( new THREE.Vector3( -10, 10, 0 ) );
/// geometry.vertices.push( new THREE.Vector3( -10, -10, 0 ) );
/// geometry.vertices.push( new THREE.Vector3( 10, -10, 0 ) );
/// geometry.faces.push( new THREE.Face3( 0, 1, 2 ) );
/// geometry.computeBoundingSphere();
/// @see https://github.com/mrdoob/three.js/blob/master/src/core/Geometry.js
@JS("THREE.Geometry")
class Geometry extends EventDispatcher {
  // @Ignore
  Geometry.fakeConstructor$() : super.fakeConstructor$();
  external factory Geometry();

  /// Unique number of this geometry instance
  external num get id;
  external set id(num v);
  external String get uuid;
  external set uuid(String v);

  /// Name for this geometry. Default is an empty string.
  external String get name;
  external set name(String v);
  external String get type;
  external set type(String v);

  /// The array of vertices hold every position of points of the model.
  /// To signal an update in this array, Geometry.verticesNeedUpdate needs to be set to true.
  external List<Vector3> get vertices;
  external set vertices(List<Vector3> v);

  /// Array of vertex colors, matching number and order of vertices.
  /// Used in ParticleSystem, Line and Ribbon.
  /// Meshes use per-face-use-of-vertex colors embedded directly in faces.
  /// To signal an update in this array, Geometry.colorsNeedUpdate needs to be set to true.
  external List<Color> get colors;
  external set colors(List<Color> v);

  /// Array of triangles or/and quads.
  /// The array of faces describe how each vertex in the model is connected with each other.
  /// To signal an update in this array, Geometry.elementsNeedUpdate needs to be set to true.
  external List<Face3> get faces;
  external set faces(List<Face3> v);

  /// Array of face UV layers.
  /// Each UV layer is an array of UV matching order and number of vertices in faces.
  /// To signal an update in this array, Geometry.uvsNeedUpdate needs to be set to true.
  external List<List<List<Vector2>>> get faceVertexUvs;
  external set faceVertexUvs(List<List<List<Vector2>>> v);

  /// Array of morph targets. Each morph target is a Javascript object:
  /// { name: "targetName", vertices: [ new THREE.Vector3(), ... ] }
  /// Morph vertices match number and order of primary vertices.
  external List<MorphTarget> get morphTargets;
  external set morphTargets(List<MorphTarget> v);

  /// Array of morph normals. Morph normals have similar structure as morph targets, each normal set is a Javascript object:
  /// morphNormal = { name: "NormalName", normals: [ new THREE.Vector3(), ... ] }
  external List<MorphNormals> get morphNormals;
  external set morphNormals(List<MorphNormals> v);

  /// Array of skinning weights, matching number and order of vertices.
  external List<num> get skinWeights;
  external set skinWeights(List<num> v);

  /// Array of skinning indices, matching number and order of vertices.
  external List<num> get skinIndices;
  external set skinIndices(List<num> v);
  external List<num> get lineDistances;
  external set lineDistances(List<num> v);

  /// Bounding box.
  external Box3 get boundingBox;
  external set boundingBox(Box3 v);

  /// Bounding sphere.
  external Sphere get boundingSphere;
  external set boundingSphere(Sphere v);

  /// Set to true if the vertices array has been updated.
  external bool get verticesNeedUpdate;
  external set verticesNeedUpdate(bool v);

  /// Set to true if the faces array has been updated.
  external bool get elementsNeedUpdate;
  external set elementsNeedUpdate(bool v);

  /// Set to true if the uvs array has been updated.
  external bool get uvsNeedUpdate;
  external set uvsNeedUpdate(bool v);

  /// Set to true if the normals array has been updated.
  external bool get normalsNeedUpdate;
  external set normalsNeedUpdate(bool v);

  /// Set to true if the colors array has been updated.
  external bool get colorsNeedUpdate;
  external set colorsNeedUpdate(bool v);

  /// Set to true if the linedistances array has been updated.
  external bool get lineDistancesNeedUpdate;
  external set lineDistancesNeedUpdate(bool v);
  external bool get groupsNeedUpdate;
  external set groupsNeedUpdate(bool v);

  /// Bakes matrix transform directly into vertex coordinates.
  external Geometry applyMatrix(Matrix4 matrix);
  external Geometry rotateX(num angle);
  external Geometry rotateY(num angle);
  external Geometry rotateZ(num angle);
  external Geometry translate(num x, num y, num z);
  external Geometry scale(num x, num y, num z);
  external void lookAt(Vector3 vector);
  external Geometry fromBufferGeometry(BufferGeometry geometry);
  external Vector3 center();
  external Geometry normalize();

  /// Computes face normals.
  external void computeFaceNormals();

  /// Computes vertex normals by averaging face normals.
  /// Face normals must be existing / computed beforehand.
  external void computeVertexNormals([bool areaWeighted]);

  /// Computes morph normals.
  external void computeMorphNormals();
  external void computeLineDistances();

  /// Computes bounding box of the geometry, updating [Geometry.boundingBox] attribute.
  external void computeBoundingBox();

  /// Computes bounding sphere of the geometry, updating Geometry.boundingSphere attribute.
  /// Neither bounding boxes or bounding spheres are computed by default. They need to be explicitly computed, otherwise they are null.
  external void computeBoundingSphere();
  external void merge(Geometry geometry, Matrix matrix,
      [num materialIndexOffset]);
  external void mergeMesh(Mesh mesh);

  /// Checks for duplicate vertices using hashmap.
  /// Duplicated vertices are removed and faces' vertices are updated.
  external num mergeVertices();
  external void sortFacesByMaterialIndex();
  external dynamic toJSON();

  /// Creates a new clone of the Geometry.
  external Geometry clone();
  external Geometry copy(Geometry source);

  /// Removes The object from memory.
  /// Don't forget to call this method when you remove an geometry because it can cuase meomory leaks.
  external void dispose();

  /// These properties do not exist in a normal Geometry class, but if you use the instance that was passed by JSONLoader, it will be added.
  external List<Bone> get bones;
  external set bones(List<Bone> v);
  external AnimationClip get animation;
  external set animation(AnimationClip v);
  external List<AnimationClip> get animations;
  external set animations(List<AnimationClip> v);

  /// EventDispatcher mixins
  external void addEventListener(String type, void listener(Event event));
  external void hasEventListener(String type, void listener(Event event));
  external void removeEventListener(String type, void listener(Event event));
  external void dispatchEvent(
      dynamic /*{ type: string; [attachment: string]: any; }*/ event);
}

// Module GeometryUtils
@JS("THREE.GeometryUtils.merge")
external dynamic merge(dynamic geometry1, dynamic geometry2,
    [dynamic materialIndexOffset]);
@JS("THREE.GeometryUtils.center")
external dynamic center(dynamic geometry);

// End module GeometryUtils
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InstancedBufferAttribute.js">src/core/InstancedBufferAttribute.js</a>
@JS("THREE.InstancedBufferAttribute")
class InstancedBufferAttribute extends BufferAttribute {
  // @Ignore
  InstancedBufferAttribute.fakeConstructor$() : super.fakeConstructor$();
  external factory InstancedBufferAttribute(ArrayLike<num> data, num itemSize,
      [num meshPerAttribute]);
  external num get meshPerAttribute;
  external set meshPerAttribute(num v);
  external InstancedBufferAttribute clone();
  external InstancedBufferAttribute copy(InstancedBufferAttribute source);
}

/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InstancedBufferGeometry.js">src/core/InstancedBufferGeometry.js</a>
@JS("THREE.InstancedBufferGeometry")
class InstancedBufferGeometry extends BufferGeometry {
  // @Ignore
  InstancedBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory InstancedBufferGeometry();
  external List<dynamic /*{start: number, count: number, instances: number}*/ >
      get groups;
  external set groups(
      List<dynamic /*{start: number, count: number, instances: number}*/ > v);
  external num get maxInstancedCount;
  external set maxInstancedCount(num v);
  external void addGroup(num start, num count, num instances);
  external InstancedBufferGeometry clone();
  external InstancedBufferGeometry copy(InstancedBufferGeometry source);
}

/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InterleavedBuffer.js">src/core/InterleavedBuffer.js</a>
@JS("THREE.InterleavedBuffer")
class InterleavedBuffer {
  // @Ignore
  InterleavedBuffer.fakeConstructor$();
  external factory InterleavedBuffer(ArrayLike<num> array, num stride);
  external ArrayLike<num> get array;
  external set array(ArrayLike<num> v);
  external num get stride;
  external set stride(num v);
  external bool get JS$dynamic;
  external set JS$dynamic(bool v);
  external dynamic /*{ offset: number; count: number }*/ get updateRange;
  external set updateRange(dynamic /*{ offset: number; count: number }*/ v);
  external num get version;
  external set version(num v);
  external num get length;
  external set length(num v);
  external num get count;
  external set count(num v);
  external bool get needsUpdate;
  external set needsUpdate(bool v);
  external InterleavedBuffer setDynamic(bool JS$dynamic);
  /*external InterleavedBuffer clone();*/
  /*external InterleavedBuffer clone();*/
  external InterleavedBuffer clone();
  external InterleavedBuffer copy(InterleavedBuffer source);
  external InterleavedBuffer copyAt(
      num index1, InterleavedBufferAttribute attribute, num index2);
  external InterleavedBuffer JS$set(ArrayLike<num> value, num index);
}

/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InstancedInterleavedBuffer.js">src/core/InstancedInterleavedBuffer.js</a>
@JS("THREE.InstancedInterleavedBuffer")
class InstancedInterleavedBuffer extends InterleavedBuffer {
  // @Ignore
  InstancedInterleavedBuffer.fakeConstructor$() : super.fakeConstructor$();
  external factory InstancedInterleavedBuffer(ArrayLike<num> array, num stride,
      [num meshPerAttribute]);
  external num get meshPerAttribute;
  external set meshPerAttribute(num v);
  external InstancedInterleavedBuffer clone();
  external InstancedInterleavedBuffer copy(InstancedInterleavedBuffer source);
}

/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InterleavedBufferAttribute.js">src/core/InterleavedBufferAttribute.js</a>
@JS("THREE.InterleavedBufferAttribute")
class InterleavedBufferAttribute {
  // @Ignore
  InterleavedBufferAttribute.fakeConstructor$();
  external factory InterleavedBufferAttribute(
      InterleavedBuffer interleavedBuffer,
      num itemSize,
      num offset,
      bool normalized);
  external String get uuid;
  external set uuid(String v);
  external InterleavedBuffer get data;
  external set data(InterleavedBuffer v);
  external num get itemSize;
  external set itemSize(num v);
  external num get offset;
  external set offset(num v);
  external num get count;
  external set count(num v);
  external bool get normalized;
  external set normalized(bool v);
  external List<dynamic> get array;
  external set array(List<dynamic> v);
  external num getX(num index);
  external InterleavedBufferAttribute setX(num index, num x);
  external num getY(num index);
  external InterleavedBufferAttribute setY(num index, num y);
  external num getZ(num index);
  external InterleavedBufferAttribute setZ(num index, num z);
  external num getW(num index);
  external InterleavedBufferAttribute setW(num index, num z);
  external InterleavedBufferAttribute setXY(num index, num x, num y);
  external InterleavedBufferAttribute setXYZ(num index, num x, num y, num z);
  external InterleavedBufferAttribute setXYZW(
      num index, num x, num y, num z, num w);
  external num get length;
  external set length(num v);
}

@JS("THREE.Object3DIdCount")
external num get Object3DIdCount;
@JS("THREE.Object3DIdCount")
external set Object3DIdCount(num v);

/// Base class for scene graph objects
@JS("THREE.Object3D")
class Object3D extends EventDispatcher {
  // @Ignore
  Object3D.fakeConstructor$() : super.fakeConstructor$();
  external factory Object3D();

  /// Unique number of this object instance.
  external num get id;
  external set id(num v);
  external String get uuid;
  external set uuid(String v);

  /// Optional name of the object (doesn't need to be unique).
  external String get name;
  external set name(String v);
  external String get type;
  external set type(String v);

  /// Object's parent in the scene graph.
  external Object3D get parent;
  external set parent(Object3D v);

  /// Array with object's children.
  external List<Object3D> get children;
  external set children(List<Object3D> v);

  /// Up direction.
  external Vector3 get up;
  external set up(Vector3 v);

  /// Object's local position.
  external Vector3 get position;
  external set position(Vector3 v);

  /// Object's local rotation (Euler angles), in radians.
  external Euler get rotation;
  external set rotation(Euler v);

  /// Global rotation.
  external Quaternion get quaternion;
  external set quaternion(Quaternion v);

  /// Object's local scale.
  external Vector3 get scale;
  external set scale(Vector3 v);
  external Matrix4 get modelViewMatrix;
  external set modelViewMatrix(Matrix4 v);
  external Matrix3 get normalMatrix;
  external set normalMatrix(Matrix3 v);

  /// Local transform.
  external Matrix4 get matrix;
  external set matrix(Matrix4 v);

  /// The global transform of the object. If the Object3d has no parent, then it's identical to the local transform.
  external Matrix4 get matrixWorld;
  external set matrixWorld(Matrix4 v);

  /// When this is set, it calculates the matrix of position, (rotation or quaternion) and scale every frame and also recalculates the matrixWorld property.
  external bool get matrixAutoUpdate;
  external set matrixAutoUpdate(bool v);

  /// When this is set, it calculates the matrixWorld in that frame and resets this property to false.
  external bool get matrixWorldNeedsUpdate;
  external set matrixWorldNeedsUpdate(bool v);
  external Layers get layers;
  external set layers(Layers v);

  /// Object gets rendered if true.
  external bool get visible;
  external set visible(bool v);

  /// Gets rendered into shadow map.
  external bool get castShadow;
  external set castShadow(bool v);

  /// Material gets baked in shadow receiving.
  external bool get receiveShadow;
  external set receiveShadow(bool v);

  /// When this is set, it checks every frame if the object is in the frustum of the camera. Otherwise the object gets drawn every frame even if it isn't visible.
  external bool get frustumCulled;
  external set frustumCulled(bool v);
  external num get renderOrder;
  external set renderOrder(num v);

  /// An object that can be used to store custom data about the Object3d. It should not hold references to functions as these will not be cloned.
  external dynamic get userData;
  external set userData(dynamic v);
  external static Vector3 get DefaultUp;
  external static set DefaultUp(Vector3 v);
  external static bool get DefaultMatrixAutoUpdate;
  external static set DefaultMatrixAutoUpdate(bool v);

  /// This updates the position, rotation and scale with the matrix.
  external void applyMatrix(Matrix4 matrix);
  external void setRotationFromAxisAngle(Vector3 axis, num angle);
  external void setRotationFromEuler(Euler euler);
  external void setRotationFromMatrix(Matrix4 m);
  external void setRotationFromQuaternion(Quaternion q);

  /// Rotate an object along an axis in object space. The axis is assumed to be normalized.
  external Object3D rotateOnAxis(Vector3 axis, num angle);
  external Object3D rotateX(num angle);
  external Object3D rotateY(num angle);
  external Object3D rotateZ(num angle);
  external Object3D translateOnAxis(Vector3 axis, num distance);

  /// Translates object along x axis by distance.
  external Object3D translateX(num distance);

  /// Translates object along y axis by distance.
  external Object3D translateY(num distance);

  /// Translates object along z axis by distance.
  external Object3D translateZ(num distance);

  /// Updates the vector from local space to world space.
  external Vector3 localToWorld(Vector3 vector);

  /// Updates the vector from world space to local space.
  external Vector3 worldToLocal(Vector3 vector);

  /// Rotates object to face point in space.
  external void lookAt(Vector3 vector);

  /// Adds object as child of this object.
  external void add(Object3D object);

  /// Removes object as child of this object.
  external void remove(Object3D object);

  /// Searches through the object's children and returns the first with a matching id, optionally recursive.
  external Object3D getObjectById(num id);

  /// Searches through the object's children and returns the first with a matching name, optionally recursive.
  external Object3D getObjectByName(String name);
  external Object3D getObjectByProperty(String name, String value);
  external Vector3 getWorldPosition([Vector3 optionalTarget]);
  external Quaternion getWorldQuaternion([Quaternion optionalTarget]);
  external Euler getWorldRotation([Euler optionalTarget]);
  external Vector3 getWorldScale([Vector3 optionalTarget]);
  external Vector3 getWorldDirection([Vector3 optionalTarget]);
  external void raycast(Raycaster raycaster, dynamic intersects);
  external void traverse(dynamic callback(Object3D object));
  external void traverseVisible(dynamic callback(Object3D object));
  external void traverseAncestors(dynamic callback(Object3D object));

  /// Updates local transform.
  external void updateMatrix();

  /// Updates global transform of the object and its children.
  external void updateMatrixWorld(bool force);
  external dynamic toJSON(
      [dynamic /*{ geometries: any, materials: any, textures: any, images: any }*/ meta]);
  external Object3D clone([bool recursive]);
  external Object3D copy(Object3D source, [bool recursive]);

  /// deprecated
  external String get eulerOrder;
  external set eulerOrder(String v);
  external Object3D getChildByName(String name);
  external Object3D translate(num distance, Vector3 axis);
}

@anonymous
@JS()
abstract class Intersection {
  external num get distance;
  external set distance(num v);
  external num get distanceToRay;
  external set distanceToRay(num v);
  external Vector3 get point;
  external set point(Vector3 v);
  external num get index;
  external set index(num v);
  external Face3 get face;
  external set face(Face3 v);
  external num get faceIndex;
  external set faceIndex(num v);
  external Object3D get object;
  external set object(Object3D v);
  external factory Intersection(
      {num distance,
      num distanceToRay,
      Vector3 point,
      num index,
      Face3 face,
      num faceIndex,
      Object3D object});
}

@anonymous
@JS()
abstract class RaycasterParameters {
  external dynamic get Mesh;
  external set Mesh(dynamic v);
  external dynamic get Line;
  external set Line(dynamic v);
  external dynamic get LOD;
  external set LOD(dynamic v);
  external dynamic /*{ threshold: number }*/ get Points;
  external set Points(dynamic /*{ threshold: number }*/ v);
  external dynamic get Sprite;
  external set Sprite(dynamic v);
  external factory RaycasterParameters(
      {dynamic Mesh,
      dynamic Line,
      dynamic LOD,
      dynamic /*{ threshold: number }*/ Points,
      dynamic Sprite});
}

@JS("THREE.Raycaster")
class Raycaster {
  // @Ignore
  Raycaster.fakeConstructor$();
  external factory Raycaster(
      [Vector3 origin, Vector3 direction, num near, num far]);
  external Ray get ray;
  external set ray(Ray v);
  external num get near;
  external set near(num v);
  external num get far;
  external set far(num v);
  external RaycasterParameters get params;
  external set params(RaycasterParameters v);
  external num get precision;
  external set precision(num v);
  external num get linePrecision;
  external set linePrecision(num v);
  external void JS$set(Vector3 origin, Vector3 direction);
  external void setFromCamera(
      dynamic /*{ x: number; y: number; }*/ coords, Camera camera);
  external List<Intersection> intersectObject(Object3D object,
      [bool recursive]);
  external List<Intersection> intersectObjects(List<Object3D> objects,
      [bool recursive]);
}

@JS("THREE.Layers")
class Layers {
  // @Ignore
  Layers.fakeConstructor$();
  external factory Layers();
  external num get mask;
  external set mask(num v);
  external void JS$set(num channel);
  external void enable(num channel);
  external void toggle(num channel);
  external void disable(num channel);
  external bool test(Layers layers);
}

@JS("THREE.Font")
class Font {
  // @Ignore
  Font.fakeConstructor$();
  external factory Font(String jsondata);
  external String get data;
  external set data(String v);
  external List<dynamic> generateShapes(String text, num size, num divisions);
}

/// Lights //////////////////////////////////////////////////////////////////////////////////
/// Abstract base class for lights.
@JS("THREE.Light")
class Light extends Object3D {
  // @Ignore
  Light.fakeConstructor$() : super.fakeConstructor$();
  external factory Light([dynamic /*num|String*/ hex, num intensity]);
  external Color get color;
  external set color(Color v);
  external num get intensity;
  external set intensity(num v);
  external bool get receiveShadow;
  external set receiveShadow(bool v);
  external LightShadow get shadow;
  external set shadow(LightShadow v);
  external dynamic get shadowCameraFov;
  external set shadowCameraFov(dynamic v);
  external dynamic get shadowCameraLeft;
  external set shadowCameraLeft(dynamic v);
  external dynamic get shadowCameraRight;
  external set shadowCameraRight(dynamic v);
  external dynamic get shadowCameraTop;
  external set shadowCameraTop(dynamic v);
  external dynamic get shadowCameraBottom;
  external set shadowCameraBottom(dynamic v);
  external dynamic get shadowCameraNear;
  external set shadowCameraNear(dynamic v);
  external dynamic get shadowCameraFar;
  external set shadowCameraFar(dynamic v);
  external dynamic get shadowBias;
  external set shadowBias(dynamic v);
  external dynamic get shadowMapWidth;
  external set shadowMapWidth(dynamic v);
  external dynamic get shadowMapHeight;
  external set shadowMapHeight(dynamic v);
  external Light copy(Light source);
  external Light clone([bool recursive]);
}

@JS("THREE.LightShadow")
class LightShadow {
  // @Ignore
  LightShadow.fakeConstructor$();
  external factory LightShadow(Camera camera);
  external Camera get camera;
  external set camera(Camera v);
  external num get bias;
  external set bias(num v);
  external num get radius;
  external set radius(num v);
  external Vector2 get mapSize;
  external set mapSize(Vector2 v);
  external RenderTarget get map;
  external set map(RenderTarget v);
  external Matrix4 get matrix;
  external set matrix(Matrix4 v);
  external LightShadow copy(LightShadow source);
  external LightShadow clone([bool recursive]);
  external dynamic toJSON();
}

/// This light's color gets applied to all the objects in the scene globally.
/// # example
/// var light = new THREE.AmbientLight( 0x404040 ); // soft white light
/// scene.add( light );
/// @source https://github.com/mrdoob/three.js/blob/master/src/lights/AmbientLight.js
@JS("THREE.AmbientLight")
class AmbientLight extends Light {
  // @Ignore
  AmbientLight.fakeConstructor$() : super.fakeConstructor$();

  /// This creates a Ambientlight with a color.
  external factory AmbientLight([dynamic /*num|String*/ hex, num intensity]);
  external bool get castShadow;
  external set castShadow(bool v);
  external AmbientLight copy(AmbientLight source);
  external AmbientLight clone([bool recursive]);
}

/// Affects objects using MeshLambertMaterial or MeshPhongMaterial.
/// @example
/// // White directional light at half intensity shining from the top.
/// var directionalLight = new THREE.DirectionalLight( 0xffffff, 0.5 );
/// directionalLight.position.set( 0, 1, 0 );
/// scene.add( directionalLight );
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/lights/DirectionalLight.js">src/lights/DirectionalLight.js</a>
@JS("THREE.DirectionalLight")
class DirectionalLight extends Light {
  // @Ignore
  DirectionalLight.fakeConstructor$() : super.fakeConstructor$();
  external factory DirectionalLight(
      [dynamic /*num|String*/ hex, num intensity]);

  /// Target used for shadow camera orientation.
  external Object3D get target;
  external set target(Object3D v);

  /// Light's intensity.
  /// Default — 1.0.
  external num get intensity;
  external set intensity(num v);
  external LightShadow get shadow;
  external set shadow(LightShadow v);
  external DirectionalLight copy(DirectionalLight source);
  external HemisphereLight clone([bool recursive]);
}

@JS("THREE.DirectionalLightShadow")
class DirectionalLightShadow extends LightShadow {
  // @Ignore
  DirectionalLightShadow.fakeConstructor$() : super.fakeConstructor$();
}

@JS("THREE.HemisphereLight")
class HemisphereLight extends Light {
  // @Ignore
  HemisphereLight.fakeConstructor$() : super.fakeConstructor$();
  external factory HemisphereLight(
      [dynamic /*num|String*/ skyColorHex,
      dynamic /*num|String*/ groundColorHex,
      num intensity]);
  external Color get groundColor;
  external set groundColor(Color v);
  external num get intensity;
  external set intensity(num v);
  external HemisphereLight copy(HemisphereLight source);
  external HemisphereLight clone([bool recursive]);
}

/// Affects objects using [MeshLambertMaterial] or [MeshPhongMaterial].
/// @example
/// var light = new THREE.PointLight( 0xff0000, 1, 100 );
/// light.position.set( 50, 50, 50 );
/// scene.add( light );
@JS("THREE.PointLight")
class PointLight extends Light {
  // @Ignore
  PointLight.fakeConstructor$() : super.fakeConstructor$();
  external factory PointLight(
      [dynamic /*num|String*/ hex, num intensity, num distance, num decay]);

  /// Light's intensity.
  /// Default - 1.0.
  external num get intensity;
  external set intensity(num v);

  /// If non-zero, light will attenuate linearly from maximum intensity at light position down to zero at distance.
  /// Default — 0.0.
  external num get distance;
  external set distance(num v);
  external num get decay;
  external set decay(num v);
  external LightShadow get shadow;
  external set shadow(LightShadow v);
  external num get power;
  external set power(num v);
  external PointLight copy(PointLight source);
  external PointLight clone([bool recursive]);
}

/// A point light that can cast shadow in one direction.
@JS("THREE.SpotLight")
class SpotLight extends Light {
  // @Ignore
  SpotLight.fakeConstructor$() : super.fakeConstructor$();
  external factory SpotLight(
      [dynamic /*num|String*/ hex,
      num intensity,
      num distance,
      num angle,
      num exponent,
      num decay]);

  /// Spotlight focus points at target.position.
  /// Default position — (0,0,0).
  external Object3D get target;
  external set target(Object3D v);

  /// Light's intensity.
  /// Default — 1.0.
  external num get intensity;
  external set intensity(num v);

  /// If non-zero, light will attenuate linearly from maximum intensity at light position down to zero at distance.
  /// Default — 0.0.
  external num get distance;
  external set distance(num v);

  /// Maximum extent of the spotlight, in radians, from its direction.
  /// Default — Math.PI/2.
  external num get angle;
  external set angle(num v);

  /// Rapidity of the falloff of light from its target direction.
  /// Default — 10.0.
  external num get exponent;
  external set exponent(num v);
  external num get decay;
  external set decay(num v);
  external SpotLightShadow get shadow;
  external set shadow(SpotLightShadow v);
  external num get power;
  external set power(num v);
  external num get penumbra;
  external set penumbra(num v);
  external SpotLight clone([bool recursive]);
  external SpotLight copy(PointLight source);
}

@JS("THREE.SpotLightShadow")
class SpotLightShadow extends LightShadow {
  // @Ignore
  SpotLightShadow.fakeConstructor$() : super.fakeConstructor$();
  external void update(Light light);
}

/// Loaders //////////////////////////////////////////////////////////////////////////////////
/// Base class for implementing loaders.
/// Events:
/// load
/// Dispatched when the image has completed loading
/// content — loaded image
/// error
/// Dispatched when the image can't be loaded
/// message — error message
@JS("THREE.Loader")
class Loader {
  // @Ignore
  Loader.fakeConstructor$();
  external factory Loader();

  /// Will be called when load starts.
  /// The default is a function with empty body.
  external VoidFunc0 get onLoadStart;
  external set onLoadStart(VoidFunc0 v);

  /// Will be called while load progresses.
  /// The default is a function with empty body.
  external VoidFunc0 get onLoadProgress;
  external set onLoadProgress(VoidFunc0 v);

  /// Will be called when load completes.
  /// The default is a function with empty body.
  external VoidFunc0 get onLoadComplete;
  external set onLoadComplete(VoidFunc0 v);

  /// default — null.
  /// If set, assigns the crossOrigin attribute of the image to the value of crossOrigin, prior to starting the load.
  external String get crossOrigin;
  external set crossOrigin(String v);
  external String extractUrlBase(String url);
  external List<Material> initMaterials(
      List<Material> materials, String texturePath);
  external bool createMaterial(Material m, String texturePath,
      [String crossOrigin]);
  external static LoaderHandler get Handlers;
  external static set Handlers(LoaderHandler v);
}

@anonymous
@JS()
abstract class LoaderHandler {
  external List<dynamic /*RegExp|Loader*/ > get handlers;
  external set handlers(List<dynamic /*RegExp|Loader*/ > v);
  external void add(RegExp regex, Loader loader);
  external Loader JS$get(String file);
}

@JS("THREE.XHRLoader")
class XHRLoader {
  // @Ignore
  XHRLoader.fakeConstructor$();
  external factory XHRLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external String get path;
  external set path(String v);
  external String get responseType;
  external set responseType(String v);
  external bool get withCredentials;
  external set withCredentials(bool v);
  external dynamic load(String url,
      [void onLoad(String responseText),
      void onProgress(dynamic event),
      void onError(dynamic event)]);
  external XHRLoader setPath(String path);
  external XHRLoader setResponseType(String responseType);
  external XHRLoader setWithCredentials(bool withCredentials);
}

@JS("THREE.FontLoader")
class FontLoader {
  // @Ignore
  FontLoader.fakeConstructor$();
  external factory FontLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external void load(String url,
      [void onLoad(String responseText),
      void onProgress(dynamic event),
      void onError(dynamic event)]);
  external Font parse(String json);
}

/// A loader for loading an image.
/// Unlike other loaders, this one emits events instead of using predefined callbacks. So if you're interested in getting notified when things happen, you need to add listeners to the object.
@JS("THREE.ImageLoader")
class ImageLoader {
  // @Ignore
  ImageLoader.fakeConstructor$();
  external factory ImageLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external String get crossOrigin;
  external set crossOrigin(String v);
  external String get withCredentials;
  external set withCredentials(String v);
  external String get path;
  external set path(String v);

  /// Begin loading from url
  external ImageElement load(String url,
      [void onLoad(ImageElement image),
      void onProgress(dynamic event),
      void onError(dynamic event)]);
  external ImageLoader setCrossOrigin(String crossOrigin);
  external ImageLoader setWithCredentials(String value);
  external ImageLoader setPath(String value);
}

/// A loader for loading objects in JSON format.
@JS("THREE.JSONLoader")
class JSONLoader extends Loader {
  // @Ignore
  JSONLoader.fakeConstructor$() : super.fakeConstructor$();
  external factory JSONLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external bool get withCredentials;
  external set withCredentials(bool v);
  external void load(String url,
      [void onLoad(Geometry geometry, List<Material> materials),
      void onProgress(dynamic event),
      void onError(dynamic event)]);
  external void setTexturePath(String value);
  external dynamic /*{ geometry: Geometry; materials?: Material[] }*/ parse(
      dynamic json,
      [String texturePath]);
}

/// Handles and keeps track of loaded and pending data.
@JS("THREE.LoadingManager")
class LoadingManager {
  // @Ignore
  LoadingManager.fakeConstructor$();
  external factory LoadingManager(
      [void onLoad(),
      void onProgress(String url, num loaded, num total),
      void onError()]);
  external VoidFunc0 get onStart;
  external set onStart(VoidFunc0 v);

  /// Will be called when load starts.
  /// The default is a function with empty body.
  external VoidFunc0 get onLoad;
  external set onLoad(VoidFunc0 v);

  /// Will be called while load progresses.
  /// The default is a function with empty body.
  external VoidFunc3<dynamic, num, num> get onProgress;
  external set onProgress(VoidFunc3<dynamic, num, num> v);

  /// Will be called when each element in the scene completes loading.
  /// The default is a function with empty body.
  external VoidFunc0 get onError;
  external set onError(VoidFunc0 v);
  external void itemStart(String url);
  external void itemEnd(String url);
  external void itemError(String url);
}

@JS("THREE.DefaultLoadingManager")
external LoadingManager get DefaultLoadingManager;

@JS("THREE.BufferGeometryLoader")
class BufferGeometryLoader {
  // @Ignore
  BufferGeometryLoader.fakeConstructor$();
  external factory BufferGeometryLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external void load(String url, void onLoad(BufferGeometry bufferGeometry),
      [void onProgress(dynamic event), void onError(dynamic event)]);
  external BufferGeometry parse(dynamic json);
}

@JS("THREE.MaterialLoader")
class MaterialLoader {
  // @Ignore
  MaterialLoader.fakeConstructor$();
  external factory MaterialLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external dynamic /*JSMap of <String,Texture>*/ get textures;
  external set textures(dynamic /*JSMap of <String,Texture>*/ v);
  external void load(String url, void onLoad(Material material));
  external void setTextures(dynamic /*JSMap of <String,Texture>*/ textures);
  external Texture getTexture(String name);
  external Material parse(dynamic json);
}

@JS("THREE.ObjectLoader")
class ObjectLoader {
  // @Ignore
  ObjectLoader.fakeConstructor$();
  external factory ObjectLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external String get texturePass;
  external set texturePass(String v);
  external String get crossOrigin;
  external set crossOrigin(String v);
  external void load(String url, [void onLoad(Object3D object)]);
  external void setTexturePath(String value);
  external void setCrossOrigin(String crossOrigin);
  external dynamic/*=T*/ parse/*<T>*/(dynamic json,
      [void onLoad(Object3D object)]);
  external List<dynamic> parseGeometries(dynamic json);
  external List<Material> parseMaterials(dynamic json, List<Texture> textures);
  external List<AnimationClip> parseAnimations(dynamic json);
  external List<dynamic> parseImages(dynamic json, void onLoad());
  external List<Texture> parseTextures(dynamic json, dynamic images);
  external dynamic/*=T*/ parseObject/*<T>*/(
      dynamic data, List<dynamic> geometries, List<Material> materials);
}

/// Class for loading a texture.
/// Unlike other loaders, this one emits events instead of using predefined callbacks. So if you're interested in getting notified when things happen, you need to add listeners to the object.
@JS("THREE.TextureLoader")
class TextureLoader {
  // @Ignore
  TextureLoader.fakeConstructor$();
  external factory TextureLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external String get crossOrigin;
  external set crossOrigin(String v);
  external String get withCredentials;
  external set withCredentials(String v);
  external String get path;
  external set path(String v);

  /// Begin loading from url
  external Texture load(String url, [void onLoad(Texture texture)]);
  external TextureLoader setCrossOrigin(String crossOrigin);
  external TextureLoader setWithCredentials(String value);
  external TextureLoader setPath(String path);
}

@JS("THREE.CubeTextureLoader")
class CubeTextureLoader {
  // @Ignore
  CubeTextureLoader.fakeConstructor$();
  external factory CubeTextureLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external String get corssOrigin;
  external set corssOrigin(String v);
  external String get path;
  external set path(String v);
  external void load(List<String> urls,
      [void onLoad(CubeTexture texture),
      void onProgress(dynamic event),
      void onError(dynamic event)]);
  external CubeTextureLoader setCrossOrigin(String crossOrigin);
  external CubeTextureLoader setPath(String path);
}

@JS("THREE.BinaryTextureLoader")
class BinaryTextureLoader {
  // @Ignore
  BinaryTextureLoader.fakeConstructor$();
  external factory BinaryTextureLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external void load(String url, void onLoad(DataTexture dataTexture),
      [void onProgress(dynamic event), void onError(dynamic event)]);
}

@JS("THREE.DataTextureLoader")
class DataTextureLoader extends BinaryTextureLoader {
  // @Ignore
  DataTextureLoader.fakeConstructor$() : super.fakeConstructor$();
}

@JS("THREE.CompressedTextureLoader")
class CompressedTextureLoader {
  // @Ignore
  CompressedTextureLoader.fakeConstructor$();
  external factory CompressedTextureLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external String get path;
  external set path(String v);
  external void load(String url, void onLoad(CompressedTexture texture),
      [void onProgress(dynamic event), void onError(dynamic event)]);
  external CompressedTextureLoader setPath(String path);
}

@JS("THREE.AudioLoader")
class AudioLoader {
  // @Ignore
  AudioLoader.fakeConstructor$();
  external factory AudioLoader([LoadingManager manager]);
  external void load(
      String url, Function onLoad, Function onPrgress, Function onError);
}

// Module Cache
@JS("THREE.Cache.enabled")
external bool get enabled;
@JS("THREE.Cache.enabled")
external set enabled(bool v);
@JS("THREE.Cache.files")
external dynamic get files;
@JS("THREE.Cache.files")
external set files(dynamic v);
@JS("THREE.Cache.add")
external void add(String key, dynamic file);
@JS("THREE.Cache.get")
external dynamic JS$get(String key);
@JS("THREE.Cache.remove")
external void remove(String key);
@JS("THREE.Cache.clear")
external void clear();
// End module Cache
/// Materials //////////////////////////////////////////////////////////////////////////////////
@JS("THREE.MaterialIdCount")
external num get MaterialIdCount;
@JS("THREE.MaterialIdCount")
external set MaterialIdCount(num v);

@anonymous
@JS()
abstract class MaterialParameters {
  external String get name;
  external set name(String v);
  external num /*enum Side*/ get side;
  external set side(num /*enum Side*/ v);
  external num get opacity;
  external set opacity(num v);
  external bool get transparent;
  external set transparent(bool v);
  external num /*enum Blending*/ get blending;
  external set blending(num /*enum Blending*/ v);
  external num /*enum BlendingDstFactor*/ get blendSrc;
  external set blendSrc(num /*enum BlendingDstFactor*/ v);
  external num /*enum BlendingSrcFactor*/ get blendDst;
  external set blendDst(num /*enum BlendingSrcFactor*/ v);
  external num /*enum BlendingEquation*/ get blendEquation;
  external set blendEquation(num /*enum BlendingEquation*/ v);
  external num get blendSrcAlpha;
  external set blendSrcAlpha(num v);
  external num get blendDstAlpha;
  external set blendDstAlpha(num v);
  external num get blendEquationAlpha;
  external set blendEquationAlpha(num v);
  external num /*enum DepthModes*/ get depthFunc;
  external set depthFunc(num /*enum DepthModes*/ v);
  external bool get depthTest;
  external set depthTest(bool v);
  external bool get depthWrite;
  external set depthWrite(bool v);
  external bool get colorWrite;
  external set colorWrite(bool v);
  external num get precision;
  external set precision(num v);
  external bool get polygonOffset;
  external set polygonOffset(bool v);
  external num get polygonOffsetFactor;
  external set polygonOffsetFactor(num v);
  external num get polygonOffsetUnits;
  external set polygonOffsetUnits(num v);
  external num get alphaTest;
  external set alphaTest(num v);
  external bool get premultipliedAlpha;
  external set premultipliedAlpha(bool v);
  external num get overdraw;
  external set overdraw(num v);
  external bool get visible;
  external set visible(bool v);
  external bool get fog;
  external set fog(bool v);
  external bool get lights;
  external set lights(bool v);
  external num /*enum Shading*/ get shading;
  external set shading(num /*enum Shading*/ v);
  external num /*enum Colors*/ get vertexColors;
  external set vertexColors(num /*enum Colors*/ v);
  external factory MaterialParameters(
      {String name,
      num /*enum Side*/ side,
      num opacity,
      bool transparent,
      num /*enum Blending*/ blending,
      num /*enum BlendingDstFactor*/ blendSrc,
      num /*enum BlendingSrcFactor*/ blendDst,
      num /*enum BlendingEquation*/ blendEquation,
      num blendSrcAlpha,
      num blendDstAlpha,
      num blendEquationAlpha,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool colorWrite,
      num precision,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      num alphaTest,
      bool premultipliedAlpha,
      num overdraw,
      bool visible,
      bool fog,
      bool lights,
      num /*enum Shading*/ shading,
      num /*enum Colors*/ vertexColors});
}

/// Materials describe the appearance of objects. They are defined in a (mostly) renderer-independent way, so you don't have to rewrite materials if you decide to use a different renderer.
@JS("THREE.Material")
class Material extends EventDispatcher {
  // @Ignore
  Material.fakeConstructor$() : super.fakeConstructor$();
  external factory Material();

  /// Unique number of this material instance.
  external num get id;
  external set id(num v);
  external String get uuid;
  external set uuid(String v);

  /// Material name. Default is an empty string.
  external String get name;
  external set name(String v);
  external String get type;
  external set type(String v);

  /// Defines which of the face sides will be rendered - front, back or both.
  /// Default is THREE.FrontSide. Other options are THREE.BackSide and THREE.DoubleSide.
  external num /*enum Side*/ get side;
  external set side(num /*enum Side*/ v);

  /// Opacity. Default is 1.
  external num get opacity;
  external set opacity(num v);

  /// Defines whether this material is transparent. This has an effect on rendering, as transparent objects need an special treatment, and are rendered after the opaque (i.e. non transparent) objects. For a working example of this behaviour, check the [WebGLRenderer] code.
  /// Default is false.
  external bool get transparent;
  external set transparent(bool v);

  /// Which blending to use when displaying objects with this material. Default is [NormalBlending].
  external num /*enum Blending*/ get blending;
  external set blending(num /*enum Blending*/ v);

  /// Blending source. It's one of the blending mode constants defined in Three.js. Default is [SrcAlphaFactor].
  external num /*enum BlendingDstFactor*/ get blendSrc;
  external set blendSrc(num /*enum BlendingDstFactor*/ v);

  /// Blending destination. It's one of the blending mode constants defined in Three.js. Default is [OneMinusSrcAlphaFactor].
  external num /*enum BlendingSrcFactor*/ get blendDst;
  external set blendDst(num /*enum BlendingSrcFactor*/ v);

  /// Blending equation to use when applying blending. It's one of the constants defined in Three.js. Default is AddEquation.
  external num /*enum BlendingEquation*/ get blendEquation;
  external set blendEquation(num /*enum BlendingEquation*/ v);
  external num get blendSrcAlpha;
  external set blendSrcAlpha(num v);
  external num get blendDstAlpha;
  external set blendDstAlpha(num v);
  external num get blendEquationAlpha;
  external set blendEquationAlpha(num v);
  external num /*enum DepthModes*/ get depthFunc;
  external set depthFunc(num /*enum DepthModes*/ v);

  /// Whether to have depth test enabled when rendering this material. Default is true.
  external bool get depthTest;
  external set depthTest(bool v);

  /// Whether rendering this material has any effect on the depth buffer. Default is true.
  /// When drawing 2D overlays it can be useful to disable the depth writing in order to layer several things together without creating z-index artifacts.
  external bool get depthWrite;
  external set depthWrite(bool v);
  external dynamic get clippingPlanes;
  external set clippingPlanes(dynamic v);
  external bool get clipShadows;
  external set clipShadows(bool v);
  external bool get colorWrite;
  external set colorWrite(bool v);
  external dynamic get precision;
  external set precision(dynamic v);

  /// Whether to use polygon offset. Default is false. This corresponds to the POLYGON_OFFSET_FILL WebGL feature.
  external bool get polygonOffset;
  external set polygonOffset(bool v);

  /// Sets the polygon offset factor. Default is 0.
  external num get polygonOffsetFactor;
  external set polygonOffsetFactor(num v);

  /// Sets the polygon offset units. Default is 0.
  external num get polygonOffsetUnits;
  external set polygonOffsetUnits(num v);

  /// Sets the alpha value to be used when running an alpha test. Default is 0.
  external num get alphaTest;
  external set alphaTest(num v);
  external bool get premultipliedAlpha;
  external set premultipliedAlpha(bool v);

  /// Enables/disables overdraw. If greater than zero, polygons are drawn slightly bigger in order to fix antialiasing gaps when using the CanvasRenderer. Default is 0.
  external num get overdraw;
  external set overdraw(num v);

  /// Defines whether this material is visible. Default is true.
  external bool get visible;
  external set visible(bool v);

  /// Specifies that the material needs to be updated, WebGL wise. Set it to true if you made changes that need to be reflected in WebGL.
  /// This property is automatically set to true when instancing a new material.
  external bool get needsUpdate;
  external set needsUpdate(bool v);
  external bool get fog;
  external set fog(bool v);
  external bool get lights;
  external set lights(bool v);
  external num /*enum Shading*/ get shading;
  external set shading(num /*enum Shading*/ v);
  external num /*enum Colors*/ get vertexColors;
  external set vertexColors(num /*enum Colors*/ v);
  external void setValues(MaterialParameters parameters);
  external dynamic toJSON([dynamic meta]);
  external Material clone();
  external Material copy(Material source);
  external void update();
  external void dispose();

  /// deprecated
  external Color get warpRGB;
  external set warpRGB(Color v);
}

@anonymous
@JS()
abstract class LineBasicMaterialParameters implements MaterialParameters {
  external dynamic /*num|String*/ get color;
  external set color(dynamic /*num|String*/ v);
  external num get linewidth;
  external set linewidth(num v);
  external String get linecap;
  external set linecap(String v);
  external String get linejoin;
  external set linejoin(String v);
  external factory LineBasicMaterialParameters(
      {dynamic /*num|String*/ color,
      num linewidth,
      String linecap,
      String linejoin,
      String name,
      num /*enum Side*/ side,
      num opacity,
      bool transparent,
      num /*enum Blending*/ blending,
      num /*enum BlendingDstFactor*/ blendSrc,
      num /*enum BlendingSrcFactor*/ blendDst,
      num /*enum BlendingEquation*/ blendEquation,
      num blendSrcAlpha,
      num blendDstAlpha,
      num blendEquationAlpha,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool colorWrite,
      num precision,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      num alphaTest,
      bool premultipliedAlpha,
      num overdraw,
      bool visible,
      bool fog,
      bool lights,
      num /*enum Shading*/ shading,
      num /*enum Colors*/ vertexColors});
}

@JS("THREE.LineBasicMaterial")
class LineBasicMaterial extends Material {
  // @Ignore
  LineBasicMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory LineBasicMaterial([LineBasicMaterialParameters parameters]);
  external Color get color;
  external set color(Color v);
  external num get linewidth;
  external set linewidth(num v);
  external String get linecap;
  external set linecap(String v);
  external String get linejoin;
  external set linejoin(String v);
  external void setValues(LineBasicMaterialParameters parameters);
  external LineBasicMaterial clone();
  external LineBasicMaterial copy(LineBasicMaterial source);
}

@anonymous
@JS()
abstract class LineDashedMaterialParameters implements MaterialParameters {
  external dynamic /*num|String*/ get color;
  external set color(dynamic /*num|String*/ v);
  external num get linewidth;
  external set linewidth(num v);
  external num get scale;
  external set scale(num v);
  external num get dashSize;
  external set dashSize(num v);
  external num get gapSize;
  external set gapSize(num v);
  external factory LineDashedMaterialParameters(
      {dynamic /*num|String*/ color,
      num linewidth,
      num scale,
      num dashSize,
      num gapSize,
      String name,
      num /*enum Side*/ side,
      num opacity,
      bool transparent,
      num /*enum Blending*/ blending,
      num /*enum BlendingDstFactor*/ blendSrc,
      num /*enum BlendingSrcFactor*/ blendDst,
      num /*enum BlendingEquation*/ blendEquation,
      num blendSrcAlpha,
      num blendDstAlpha,
      num blendEquationAlpha,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool colorWrite,
      num precision,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      num alphaTest,
      bool premultipliedAlpha,
      num overdraw,
      bool visible,
      bool fog,
      bool lights,
      num /*enum Shading*/ shading,
      num /*enum Colors*/ vertexColors});
}

@JS("THREE.LineDashedMaterial")
class LineDashedMaterial extends Material {
  // @Ignore
  LineDashedMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory LineDashedMaterial(
      [LineDashedMaterialParameters parameters]);
  external Color get color;
  external set color(Color v);
  external num get linewidth;
  external set linewidth(num v);
  external num get scale;
  external set scale(num v);
  external num get dashSize;
  external set dashSize(num v);
  external num get gapSize;
  external set gapSize(num v);
  external void setValues(LineDashedMaterialParameters parameters);
  external LineDashedMaterial clone();
  external LineDashedMaterial copy(LineDashedMaterial source);
}

/// parameters is an object with one or more properties defining the material's appearance.
@anonymous
@JS()
abstract class MeshBasicMaterialParameters implements MaterialParameters {
  external dynamic /*num|String*/ get color;
  external set color(dynamic /*num|String*/ v);
  external num get opacity;
  external set opacity(num v);
  external Texture get map;
  external set map(Texture v);
  external Texture get aoMap;
  external set aoMap(Texture v);
  external num get aoMapIntensity;
  external set aoMapIntensity(num v);
  external Texture get specularMap;
  external set specularMap(Texture v);
  external Texture get alphaMap;
  external set alphaMap(Texture v);
  external Texture get envMap;
  external set envMap(Texture v);
  external num /*enum Combine*/ get combine;
  external set combine(num /*enum Combine*/ v);
  external num get reflectivity;
  external set reflectivity(num v);
  external num get refractionRatio;
  external set refractionRatio(num v);
  external num /*enum Shading*/ get shading;
  external set shading(num /*enum Shading*/ v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external String get wireframeLinecap;
  external set wireframeLinecap(String v);
  external String get wireframeLinejoin;
  external set wireframeLinejoin(String v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external factory MeshBasicMaterialParameters(
      {dynamic /*num|String*/ color,
      num opacity,
      Texture map,
      Texture aoMap,
      num aoMapIntensity,
      Texture specularMap,
      Texture alphaMap,
      Texture envMap,
      num /*enum Combine*/ combine,
      num reflectivity,
      num refractionRatio,
      num /*enum Shading*/ shading,
      bool wireframe,
      num wireframeLinewidth,
      String wireframeLinecap,
      String wireframeLinejoin,
      bool skinning,
      bool morphTargets,
      String name,
      num /*enum Side*/ side,
      bool transparent,
      num /*enum Blending*/ blending,
      num /*enum BlendingDstFactor*/ blendSrc,
      num /*enum BlendingSrcFactor*/ blendDst,
      num /*enum BlendingEquation*/ blendEquation,
      num blendSrcAlpha,
      num blendDstAlpha,
      num blendEquationAlpha,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool colorWrite,
      num precision,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      num alphaTest,
      bool premultipliedAlpha,
      num overdraw,
      bool visible,
      bool fog,
      bool lights,
      num /*enum Colors*/ vertexColors});
}

@JS("THREE.MeshBasicMaterial")
class MeshBasicMaterial extends Material {
  // @Ignore
  MeshBasicMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory MeshBasicMaterial([MeshBasicMaterialParameters parameters]);
  external Color get color;
  external set color(Color v);
  external Texture get map;
  external set map(Texture v);
  external Texture get aoMap;
  external set aoMap(Texture v);
  external num get aoMapIntensity;
  external set aoMapIntensity(num v);
  external Texture get specularMap;
  external set specularMap(Texture v);
  external Texture get alphaMap;
  external set alphaMap(Texture v);
  external Texture get envMap;
  external set envMap(Texture v);
  external num /*enum Combine*/ get combine;
  external set combine(num /*enum Combine*/ v);
  external num get reflectivity;
  external set reflectivity(num v);
  external num get refractionRatio;
  external set refractionRatio(num v);
  external num /*enum Shading*/ get shading;
  external set shading(num /*enum Shading*/ v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external String get wireframeLinecap;
  external set wireframeLinecap(String v);
  external String get wireframeLinejoin;
  external set wireframeLinejoin(String v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external void setValues(MeshBasicMaterialParameters parameters);
  external MeshBasicMaterial clone();
  external MeshBasicMaterial copy(MeshBasicMaterial source);
}

@anonymous
@JS()
abstract class MeshDepthMaterialParameters implements MaterialParameters {
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external factory MeshDepthMaterialParameters(
      {bool wireframe,
      num wireframeLinewidth,
      String name,
      num /*enum Side*/ side,
      num opacity,
      bool transparent,
      num /*enum Blending*/ blending,
      num /*enum BlendingDstFactor*/ blendSrc,
      num /*enum BlendingSrcFactor*/ blendDst,
      num /*enum BlendingEquation*/ blendEquation,
      num blendSrcAlpha,
      num blendDstAlpha,
      num blendEquationAlpha,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool colorWrite,
      num precision,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      num alphaTest,
      bool premultipliedAlpha,
      num overdraw,
      bool visible,
      bool fog,
      bool lights,
      num /*enum Shading*/ shading,
      num /*enum Colors*/ vertexColors});
}

@JS("THREE.MeshDepthMaterial")
class MeshDepthMaterial extends Material {
  // @Ignore
  MeshDepthMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory MeshDepthMaterial([MeshDepthMaterialParameters parameters]);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external void setValues(MeshDepthMaterialParameters parameters);
  external MeshDepthMaterial clone();
  external MeshDepthMaterial copy(MeshDepthMaterial source);
}

@anonymous
@JS()
abstract class MeshLambertMaterialParameters implements MaterialParameters {
  external dynamic /*num|String*/ get color;
  external set color(dynamic /*num|String*/ v);
  external dynamic /*num|String*/ get emissive;
  external set emissive(dynamic /*num|String*/ v);
  external num get emissiveIntensity;
  external set emissiveIntensity(num v);
  external Texture get emissiveMap;
  external set emissiveMap(Texture v);
  external Texture get map;
  external set map(Texture v);
  external Texture get lighhtMap;
  external set lighhtMap(Texture v);
  external num get lightMapIntensity;
  external set lightMapIntensity(num v);
  external Texture get aoMap;
  external set aoMap(Texture v);
  external num get aoMapIntensity;
  external set aoMapIntensity(num v);
  external Texture get specularMap;
  external set specularMap(Texture v);
  external Texture get alphaMap;
  external set alphaMap(Texture v);
  external Texture get envMap;
  external set envMap(Texture v);
  external num /*enum Combine*/ get combine;
  external set combine(num /*enum Combine*/ v);
  external num get reflectivity;
  external set reflectivity(num v);
  external num get refractionRatio;
  external set refractionRatio(num v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external String get wireframeLinecap;
  external set wireframeLinecap(String v);
  external String get wireframeLinejoin;
  external set wireframeLinejoin(String v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external bool get morphNormals;
  external set morphNormals(bool v);
  external factory MeshLambertMaterialParameters(
      {dynamic /*num|String*/ color,
      dynamic /*num|String*/ emissive,
      num emissiveIntensity,
      Texture emissiveMap,
      Texture map,
      Texture lighhtMap,
      num lightMapIntensity,
      Texture aoMap,
      num aoMapIntensity,
      Texture specularMap,
      Texture alphaMap,
      Texture envMap,
      num /*enum Combine*/ combine,
      num reflectivity,
      num refractionRatio,
      bool wireframe,
      num wireframeLinewidth,
      String wireframeLinecap,
      String wireframeLinejoin,
      bool skinning,
      bool morphTargets,
      bool morphNormals,
      String name,
      num /*enum Side*/ side,
      num opacity,
      bool transparent,
      num /*enum Blending*/ blending,
      num /*enum BlendingDstFactor*/ blendSrc,
      num /*enum BlendingSrcFactor*/ blendDst,
      num /*enum BlendingEquation*/ blendEquation,
      num blendSrcAlpha,
      num blendDstAlpha,
      num blendEquationAlpha,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool colorWrite,
      num precision,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      num alphaTest,
      bool premultipliedAlpha,
      num overdraw,
      bool visible,
      bool fog,
      bool lights,
      num /*enum Shading*/ shading,
      num /*enum Colors*/ vertexColors});
}

@JS("THREE.MeshLambertMaterial")
class MeshLambertMaterial extends Material {
  // @Ignore
  MeshLambertMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory MeshLambertMaterial(
      [MeshLambertMaterialParameters parameters]);
  external Color get color;
  external set color(Color v);
  external dynamic /*num|String*/ get emissive;
  external set emissive(dynamic /*num|String*/ v);
  external num get emissiveIntensity;
  external set emissiveIntensity(num v);
  external Texture get emissiveMap;
  external set emissiveMap(Texture v);
  external Texture get map;
  external set map(Texture v);
  external Texture get lighhtMap;
  external set lighhtMap(Texture v);
  external num get lightMapIntensity;
  external set lightMapIntensity(num v);
  external Texture get aoMap;
  external set aoMap(Texture v);
  external num get aoMapIntensity;
  external set aoMapIntensity(num v);
  external Texture get specularMap;
  external set specularMap(Texture v);
  external Texture get alphaMap;
  external set alphaMap(Texture v);
  external Texture get envMap;
  external set envMap(Texture v);
  external num /*enum Combine*/ get combine;
  external set combine(num /*enum Combine*/ v);
  external num get reflectivity;
  external set reflectivity(num v);
  external num get refractionRatio;
  external set refractionRatio(num v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external String get wireframeLinecap;
  external set wireframeLinecap(String v);
  external String get wireframeLinejoin;
  external set wireframeLinejoin(String v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external bool get morphNormals;
  external set morphNormals(bool v);
  external void setValues(MeshLambertMaterialParameters parameters);
  external MeshLambertMaterial clone();
  external MeshLambertMaterial copy(MeshLambertMaterial source);
}

@anonymous
@JS()
abstract class MeshStandardMaterialParameters implements MaterialParameters {
  external dynamic /*num|String*/ get color;
  external set color(dynamic /*num|String*/ v);
  external num get roughness;
  external set roughness(num v);
  external num get metalness;
  external set metalness(num v);
  external Texture get map;
  external set map(Texture v);
  external Texture get lighhtMap;
  external set lighhtMap(Texture v);
  external num get lightMapIntensity;
  external set lightMapIntensity(num v);
  external Texture get aoMap;
  external set aoMap(Texture v);
  external num get aoMapIntensity;
  external set aoMapIntensity(num v);
  external Color get emissive;
  external set emissive(Color v);
  external num get emissiveIntensity;
  external set emissiveIntensity(num v);
  external Texture get emissiveMap;
  external set emissiveMap(Texture v);
  external Texture get bumpMap;
  external set bumpMap(Texture v);
  external num get bumpScale;
  external set bumpScale(num v);
  external Texture get normalMap;
  external set normalMap(Texture v);
  external num get normalScale;
  external set normalScale(num v);
  external Texture get displacementMap;
  external set displacementMap(Texture v);
  external num get displacementScale;
  external set displacementScale(num v);
  external num get displacementBias;
  external set displacementBias(num v);
  external Texture get roughnessMap;
  external set roughnessMap(Texture v);
  external Texture get metalMap;
  external set metalMap(Texture v);
  external Texture get alphaMap;
  external set alphaMap(Texture v);
  external Texture get envMap;
  external set envMap(Texture v);
  external num get envMapIntensity;
  external set envMapIntensity(num v);
  external num get refractionRatio;
  external set refractionRatio(num v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external bool get morphNormals;
  external set morphNormals(bool v);
  external factory MeshStandardMaterialParameters(
      {dynamic /*num|String*/ color,
      num roughness,
      num metalness,
      Texture map,
      Texture lighhtMap,
      num lightMapIntensity,
      Texture aoMap,
      num aoMapIntensity,
      Color emissive,
      num emissiveIntensity,
      Texture emissiveMap,
      Texture bumpMap,
      num bumpScale,
      Texture normalMap,
      num normalScale,
      Texture displacementMap,
      num displacementScale,
      num displacementBias,
      Texture roughnessMap,
      Texture metalMap,
      Texture alphaMap,
      Texture envMap,
      num envMapIntensity,
      num refractionRatio,
      bool wireframe,
      num wireframeLinewidth,
      bool skinning,
      bool morphTargets,
      bool morphNormals,
      String name,
      num /*enum Side*/ side,
      num opacity,
      bool transparent,
      num /*enum Blending*/ blending,
      num /*enum BlendingDstFactor*/ blendSrc,
      num /*enum BlendingSrcFactor*/ blendDst,
      num /*enum BlendingEquation*/ blendEquation,
      num blendSrcAlpha,
      num blendDstAlpha,
      num blendEquationAlpha,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool colorWrite,
      num precision,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      num alphaTest,
      bool premultipliedAlpha,
      num overdraw,
      bool visible,
      bool fog,
      bool lights,
      num /*enum Shading*/ shading,
      num /*enum Colors*/ vertexColors});
}

@JS("THREE.MeshStandardMaterial")
class MeshStandardMaterial extends Material {
  // @Ignore
  MeshStandardMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory MeshStandardMaterial(
      [MeshStandardMaterialParameters parameters]);
  external dynamic get defines;
  external set defines(dynamic v);
  external Color get color;
  external set color(Color v);
  external num get roughness;
  external set roughness(num v);
  external num get metalness;
  external set metalness(num v);
  external Texture get map;
  external set map(Texture v);
  external Texture get lighhtMap;
  external set lighhtMap(Texture v);
  external num get lightMapIntensity;
  external set lightMapIntensity(num v);
  external Texture get aoMap;
  external set aoMap(Texture v);
  external num get aoMapIntensity;
  external set aoMapIntensity(num v);
  external Color get emissive;
  external set emissive(Color v);
  external num get emissiveIntensity;
  external set emissiveIntensity(num v);
  external Texture get emissiveMap;
  external set emissiveMap(Texture v);
  external Texture get bumpMap;
  external set bumpMap(Texture v);
  external num get bumpScale;
  external set bumpScale(num v);
  external Texture get normalMap;
  external set normalMap(Texture v);
  external num get normalScale;
  external set normalScale(num v);
  external Texture get displacementMap;
  external set displacementMap(Texture v);
  external num get displacementScale;
  external set displacementScale(num v);
  external num get displacementBias;
  external set displacementBias(num v);
  external Texture get roughnessMap;
  external set roughnessMap(Texture v);
  external Texture get metalMap;
  external set metalMap(Texture v);
  external Texture get alphaMap;
  external set alphaMap(Texture v);
  external Texture get envMap;
  external set envMap(Texture v);
  external num get envMapIntensity;
  external set envMapIntensity(num v);
  external num get refractionRatio;
  external set refractionRatio(num v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external bool get morphNormals;
  external set morphNormals(bool v);
  external void setValues(MeshStandardMaterialParameters parameters);
  external MeshStandardMaterial clone();
  external MeshStandardMaterial copy(MeshStandardMaterial source);
}

@anonymous
@JS()
abstract class MeshNormalMaterialParameters implements MaterialParameters {
  /// Render geometry as wireframe. Default is false (i.e. render as smooth shaded).
  external bool get wireframe;
  external set wireframe(bool v);

  /// Controls wireframe thickness. Default is 1.
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external factory MeshNormalMaterialParameters(
      {bool wireframe,
      num wireframeLinewidth,
      bool morphTargets,
      String name,
      num /*enum Side*/ side,
      num opacity,
      bool transparent,
      num /*enum Blending*/ blending,
      num /*enum BlendingDstFactor*/ blendSrc,
      num /*enum BlendingSrcFactor*/ blendDst,
      num /*enum BlendingEquation*/ blendEquation,
      num blendSrcAlpha,
      num blendDstAlpha,
      num blendEquationAlpha,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool colorWrite,
      num precision,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      num alphaTest,
      bool premultipliedAlpha,
      num overdraw,
      bool visible,
      bool fog,
      bool lights,
      num /*enum Shading*/ shading,
      num /*enum Colors*/ vertexColors});
}

@JS("THREE.MeshNormalMaterial")
class MeshNormalMaterial extends Material {
  // @Ignore
  MeshNormalMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory MeshNormalMaterial(
      [MeshNormalMaterialParameters parameters]);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external void setValues(MeshNormalMaterialParameters parameters);
  external MeshNormalMaterial clone();
  external MeshNormalMaterial copy(MeshNormalMaterial source);
}

@anonymous
@JS()
abstract class MeshPhongMaterialParameters implements MaterialParameters {
  /// geometry color in hexadecimal. Default is 0xffffff.
  external dynamic /*num|String*/ get color;
  external set color(dynamic /*num|String*/ v);
  external num get specular;
  external set specular(num v);
  external num get shininess;
  external set shininess(num v);
  external num get opacity;
  external set opacity(num v);
  external Texture get map;
  external set map(Texture v);
  external Texture get lightMap;
  external set lightMap(Texture v);
  external num get lightMapIntensity;
  external set lightMapIntensity(num v);
  external Texture get aoMap;
  external set aoMap(Texture v);
  external num get aoMapIntensity;
  external set aoMapIntensity(num v);
  external num get emissive;
  external set emissive(num v);
  external num get emissiveIntensity;
  external set emissiveIntensity(num v);
  external Texture get emissiveMap;
  external set emissiveMap(Texture v);
  external Texture get bumpMap;
  external set bumpMap(Texture v);
  external num get bumpScale;
  external set bumpScale(num v);
  external Texture get normalMap;
  external set normalMap(Texture v);
  external Vector2 get normalScale;
  external set normalScale(Vector2 v);
  external Texture get displacementMap;
  external set displacementMap(Texture v);
  external num get displacementScale;
  external set displacementScale(num v);
  external num get displacementBias;
  external set displacementBias(num v);
  external Texture get specularMap;
  external set specularMap(Texture v);
  external Texture get alphaMap;
  external set alphaMap(Texture v);
  external Texture get envMap;
  external set envMap(Texture v);
  external num /*enum Combine*/ get combine;
  external set combine(num /*enum Combine*/ v);
  external num get reflectivity;
  external set reflectivity(num v);
  external num get refractionRatio;
  external set refractionRatio(num v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external String get wireframeLinecap;
  external set wireframeLinecap(String v);
  external String get wireframeLinejoin;
  external set wireframeLinejoin(String v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external bool get morphNormals;
  external set morphNormals(bool v);
  external factory MeshPhongMaterialParameters(
      {dynamic /*num|String*/ color,
      num specular,
      num shininess,
      num opacity,
      Texture map,
      Texture lightMap,
      num lightMapIntensity,
      Texture aoMap,
      num aoMapIntensity,
      num emissive,
      num emissiveIntensity,
      Texture emissiveMap,
      Texture bumpMap,
      num bumpScale,
      Texture normalMap,
      Vector2 normalScale,
      Texture displacementMap,
      num displacementScale,
      num displacementBias,
      Texture specularMap,
      Texture alphaMap,
      Texture envMap,
      num /*enum Combine*/ combine,
      num reflectivity,
      num refractionRatio,
      bool wireframe,
      num wireframeLinewidth,
      String wireframeLinecap,
      String wireframeLinejoin,
      bool skinning,
      bool morphTargets,
      bool morphNormals,
      String name,
      num /*enum Side*/ side,
      bool transparent,
      num /*enum Blending*/ blending,
      num /*enum BlendingDstFactor*/ blendSrc,
      num /*enum BlendingSrcFactor*/ blendDst,
      num /*enum BlendingEquation*/ blendEquation,
      num blendSrcAlpha,
      num blendDstAlpha,
      num blendEquationAlpha,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool colorWrite,
      num precision,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      num alphaTest,
      bool premultipliedAlpha,
      num overdraw,
      bool visible,
      bool fog,
      bool lights,
      num /*enum Shading*/ shading,
      num /*enum Colors*/ vertexColors});
}

@JS("THREE.MeshPhongMaterial")
class MeshPhongMaterial extends Material {
  // @Ignore
  MeshPhongMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory MeshPhongMaterial([MeshPhongMaterialParameters parameters]);
  external Color get color;
  external set color(Color v);
  external Color get specular;
  external set specular(Color v);
  external num get shininess;
  external set shininess(num v);
  external Texture get map;
  external set map(Texture v);
  external Texture get lightMap;
  external set lightMap(Texture v);
  external num get lightMapIntensity;
  external set lightMapIntensity(num v);
  external Texture get aoMap;
  external set aoMap(Texture v);
  external num get aoMapIntensity;
  external set aoMapIntensity(num v);
  external Color get emissive;
  external set emissive(Color v);
  external num get emissiveIntensity;
  external set emissiveIntensity(num v);
  external Texture get emissiveMap;
  external set emissiveMap(Texture v);
  external Texture get bumpMap;
  external set bumpMap(Texture v);
  external num get bumpScale;
  external set bumpScale(num v);
  external Texture get normalMap;
  external set normalMap(Texture v);
  external Vector2 get normalScale;
  external set normalScale(Vector2 v);
  external Texture get displacementMap;
  external set displacementMap(Texture v);
  external num get displacementScale;
  external set displacementScale(num v);
  external num get displacementBias;
  external set displacementBias(num v);
  external Texture get specularMap;
  external set specularMap(Texture v);
  external Texture get alphaMap;
  external set alphaMap(Texture v);
  external Texture get envMap;
  external set envMap(Texture v);
  external num /*enum Combine*/ get combine;
  external set combine(num /*enum Combine*/ v);
  external num get reflectivity;
  external set reflectivity(num v);
  external num get refractionRatio;
  external set refractionRatio(num v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external String get wireframeLinecap;
  external set wireframeLinecap(String v);
  external String get wireframeLinejoin;
  external set wireframeLinejoin(String v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external bool get morphNormals;
  external set morphNormals(bool v);
  external bool get metal;
  external set metal(bool v);
  external void setValues(MeshPhongMaterialParameters parameters);
  external MeshPhongMaterial clone();
  external MeshPhongMaterial copy(MeshPhongMaterial source);
}

@anonymous
@JS()
abstract class MeshPhysicalMaterialParameters
    implements MeshStandardMaterialParameters {
  external num get reflectivity;
  external set reflectivity(num v);
  external num get clearCoat;
  external set clearCoat(num v);
  external num get clearCoatRoughness;
  external set clearCoatRoughness(num v);
  external factory MeshPhysicalMaterialParameters(
      {num reflectivity,
      num clearCoat,
      num clearCoatRoughness,
      dynamic /*num|String*/ color,
      num roughness,
      num metalness,
      Texture map,
      Texture lighhtMap,
      num lightMapIntensity,
      Texture aoMap,
      num aoMapIntensity,
      Color emissive,
      num emissiveIntensity,
      Texture emissiveMap,
      Texture bumpMap,
      num bumpScale,
      Texture normalMap,
      num normalScale,
      Texture displacementMap,
      num displacementScale,
      num displacementBias,
      Texture roughnessMap,
      Texture metalMap,
      Texture alphaMap,
      Texture envMap,
      num envMapIntensity,
      num refractionRatio,
      bool wireframe,
      num wireframeLinewidth,
      bool skinning,
      bool morphTargets,
      bool morphNormals,
      String name,
      num /*enum Side*/ side,
      num opacity,
      bool transparent,
      num /*enum Blending*/ blending,
      num /*enum BlendingDstFactor*/ blendSrc,
      num /*enum BlendingSrcFactor*/ blendDst,
      num /*enum BlendingEquation*/ blendEquation,
      num blendSrcAlpha,
      num blendDstAlpha,
      num blendEquationAlpha,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool colorWrite,
      num precision,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      num alphaTest,
      bool premultipliedAlpha,
      num overdraw,
      bool visible,
      bool fog,
      bool lights,
      num /*enum Shading*/ shading,
      num /*enum Colors*/ vertexColors});
}

@JS("THREE.MeshPhysicalMaterial")
class MeshPhysicalMaterial extends MeshStandardMaterial {
  // @Ignore
  MeshPhysicalMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory MeshPhysicalMaterial(
      MeshPhysicalMaterialParameters parameters);
  external dynamic get defines;
  external set defines(dynamic v);
  external num get reflectivity;
  external set reflectivity(num v);
  external num get clearCoat;
  external set clearCoat(num v);
  external num get clearCoatRoughness;
  external set clearCoatRoughness(num v);
}

/// MultiMaterial does not inherit the Material class in the original code. However, it should treat as Material class.
/// See tests/canvas/canvas_materials.ts.
@JS("THREE.MultiMaterial")
class MultiMaterial extends Material {
  // @Ignore
  MultiMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory MultiMaterial([List<Material> materials]);
  external List<Material> get materials;
  external set materials(List<Material> v);
  external dynamic toJSON(dynamic meta);
  external MultiMaterial clone();
}

@JS("THREE.MeshFaceMaterial")
class MeshFaceMaterial extends MultiMaterial {
  // @Ignore
  MeshFaceMaterial.fakeConstructor$() : super.fakeConstructor$();
}

@anonymous
@JS()
abstract class PointsMaterialParameters implements MaterialParameters {
  external dynamic /*num|String*/ get color;
  external set color(dynamic /*num|String*/ v);
  external Texture get map;
  external set map(Texture v);
  external num get size;
  external set size(num v);
  external bool get sizeAttenuation;
  external set sizeAttenuation(bool v);
  external factory PointsMaterialParameters(
      {dynamic /*num|String*/ color,
      Texture map,
      num size,
      bool sizeAttenuation,
      String name,
      num /*enum Side*/ side,
      num opacity,
      bool transparent,
      num /*enum Blending*/ blending,
      num /*enum BlendingDstFactor*/ blendSrc,
      num /*enum BlendingSrcFactor*/ blendDst,
      num /*enum BlendingEquation*/ blendEquation,
      num blendSrcAlpha,
      num blendDstAlpha,
      num blendEquationAlpha,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool colorWrite,
      num precision,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      num alphaTest,
      bool premultipliedAlpha,
      num overdraw,
      bool visible,
      bool fog,
      bool lights,
      num /*enum Shading*/ shading,
      num /*enum Colors*/ vertexColors});
}

@JS("THREE.PointsMaterial")
class PointsMaterial extends Material {
  // @Ignore
  PointsMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory PointsMaterial([PointsMaterialParameters parameters]);
  external Color get color;
  external set color(Color v);
  external Texture get map;
  external set map(Texture v);
  external num get size;
  external set size(num v);
  external bool get sizeAttenuation;
  external set sizeAttenuation(bool v);
  external void setValues(PointsMaterialParameters parameters);
  external PointsMaterial clone();
  external PointsMaterial copy(PointsMaterial source);
}

@JS("THREE.PointCloudMaterial")
class PointCloudMaterial extends PointsMaterial {
  // @Ignore
  PointCloudMaterial.fakeConstructor$() : super.fakeConstructor$();
}

@JS("THREE.ParticleBasicMaterial")
class ParticleBasicMaterial extends PointsMaterial {
  // @Ignore
  ParticleBasicMaterial.fakeConstructor$() : super.fakeConstructor$();
}

@JS("THREE.ParticleSystemMaterial")
class ParticleSystemMaterial extends PointsMaterial {
  // @Ignore
  ParticleSystemMaterial.fakeConstructor$() : super.fakeConstructor$();
}

@anonymous
@JS()
abstract class ShaderMaterialParameters implements MaterialParameters {
  external dynamic get defines;
  external set defines(dynamic v);
  external dynamic get uniforms;
  external set uniforms(dynamic v);
  external String get vertexShader;
  external set vertexShader(String v);
  external String get fragmentShader;
  external set fragmentShader(String v);
  external num get lineWidth;
  external set lineWidth(num v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external bool get lights;
  external set lights(bool v);
  external bool get clipping;
  external set clipping(bool v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external bool get morphNormals;
  external set morphNormals(bool v);
  external factory ShaderMaterialParameters(
      {dynamic defines,
      dynamic uniforms,
      String vertexShader,
      String fragmentShader,
      num lineWidth,
      bool wireframe,
      num wireframeLinewidth,
      bool lights,
      bool clipping,
      bool skinning,
      bool morphTargets,
      bool morphNormals,
      String name,
      num /*enum Side*/ side,
      num opacity,
      bool transparent,
      num /*enum Blending*/ blending,
      num /*enum BlendingDstFactor*/ blendSrc,
      num /*enum BlendingSrcFactor*/ blendDst,
      num /*enum BlendingEquation*/ blendEquation,
      num blendSrcAlpha,
      num blendDstAlpha,
      num blendEquationAlpha,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool colorWrite,
      num precision,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      num alphaTest,
      bool premultipliedAlpha,
      num overdraw,
      bool visible,
      bool fog,
      num /*enum Shading*/ shading,
      num /*enum Colors*/ vertexColors});
}

@JS("THREE.ShaderMaterial")
class ShaderMaterial extends Material {
  // @Ignore
  ShaderMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory ShaderMaterial([ShaderMaterialParameters parameters]);
  external dynamic get defines;
  external set defines(dynamic v);
  external dynamic get uniforms;
  external set uniforms(dynamic v);
  external String get vertexShader;
  external set vertexShader(String v);
  external String get fragmentShader;
  external set fragmentShader(String v);
  external num get linewidth;
  external set linewidth(num v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external bool get lights;
  external set lights(bool v);
  external bool get clipping;
  external set clipping(bool v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external bool get morphNormals;
  external set morphNormals(bool v);
  external dynamic get derivatives;
  external set derivatives(dynamic v);
  external dynamic /*{ derivatives: boolean; fragDepth: boolean; drawBuffers: boolean; shaderTextureLOD: boolean }*/ get extensions;
  external set extensions(
      dynamic /*{ derivatives: boolean; fragDepth: boolean; drawBuffers: boolean; shaderTextureLOD: boolean }*/ v);
  external dynamic get defaultAttributeValues;
  external set defaultAttributeValues(dynamic v);
  external String get index0AttributeName;
  external set index0AttributeName(String v);
  external void setValues(ShaderMaterialParameters parameters);
  external ShaderMaterial clone();
  external ShaderMaterial copy(ShaderMaterial source);
  external dynamic toJSON(dynamic meta);
}

@JS("THREE.RawShaderMaterial")
class RawShaderMaterial extends ShaderMaterial {
  // @Ignore
  RawShaderMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory RawShaderMaterial([ShaderMaterialParameters parameters]);
}

@anonymous
@JS()
abstract class SpriteMaterialParameters implements MaterialParameters {
  external dynamic /*num|String*/ get color;
  external set color(dynamic /*num|String*/ v);
  external Texture get map;
  external set map(Texture v);
  external num get rotation;
  external set rotation(num v);
  external factory SpriteMaterialParameters(
      {dynamic /*num|String*/ color,
      Texture map,
      num rotation,
      String name,
      num /*enum Side*/ side,
      num opacity,
      bool transparent,
      num /*enum Blending*/ blending,
      num /*enum BlendingDstFactor*/ blendSrc,
      num /*enum BlendingSrcFactor*/ blendDst,
      num /*enum BlendingEquation*/ blendEquation,
      num blendSrcAlpha,
      num blendDstAlpha,
      num blendEquationAlpha,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool colorWrite,
      num precision,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      num alphaTest,
      bool premultipliedAlpha,
      num overdraw,
      bool visible,
      bool fog,
      bool lights,
      num /*enum Shading*/ shading,
      num /*enum Colors*/ vertexColors});
}

@JS("THREE.SpriteMaterial")
class SpriteMaterial extends Material {
  // @Ignore
  SpriteMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory SpriteMaterial([SpriteMaterialParameters parameters]);
  external Color get color;
  external set color(Color v);
  external Texture get map;
  external set map(Texture v);
  external num get rotation;
  external set rotation(num v);
  external void setValues(SpriteMaterialParameters parameters);
  external SpriteMaterial clone();
  external SpriteMaterial copy(SpriteMaterial source);
}

@JS("THREE.ShadowMaterial")
class ShadowMaterial extends ShaderMaterial {
  // @Ignore
  ShadowMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory ShadowMaterial([ShaderMaterialParameters parameters]);
}

/// Math //////////////////////////////////////////////////////////////////////////////////
@JS("THREE.Box2")
class Box2 {
  // @Ignore
  Box2.fakeConstructor$();
  external factory Box2([Vector2 min, Vector2 max]);
  external Vector2 get max;
  external set max(Vector2 v);
  external Vector2 get min;
  external set min(Vector2 v);
  external Box2 JS$set(Vector2 min, Vector2 max);
  external Box2 setFromPoints(List<Vector2> points);
  external Box2 setFromCenterAndSize(Vector2 center, Vector2 size);
  external Box2 clone();
  external Box2 copy(Box2 box);
  external Box2 makeEmpty();
  external bool isEmpty();
  external Vector2 center([Vector2 optionalTarget]);
  external Vector2 size([Vector2 optionalTarget]);
  external Box2 expandByPoint(Vector2 point);
  external Box2 expandByVector(Vector2 vector);
  external Box2 expandByScalar(num scalar);
  external bool containsPoint(Vector2 point);
  external bool containsBox(Box2 box);
  external Vector2 getParameter(Vector2 point);
  external bool intersectsBox(Box2 box);
  external Vector2 clampPoint(Vector2 point, [Vector2 optionalTarget]);
  external num distanceToPoint(Vector2 point);
  external Box2 intersect(Box2 box);
  external Box2 union(Box2 box);
  external Box2 translate(Vector2 offset);
  external bool equals(Box2 box);
  external dynamic empty();
  external dynamic isIntersectionBox(dynamic b);
}

@JS("THREE.Box3")
class Box3 {
  // @Ignore
  Box3.fakeConstructor$();
  external factory Box3([Vector3 min, Vector3 max]);
  external Vector3 get max;
  external set max(Vector3 v);
  external Vector3 get min;
  external set min(Vector3 v);
  external Box3 JS$set(Vector3 min, Vector3 max);
  external Box3 setFromArray(ArrayLike<num> array);
  external Box3 setFromPoints(List<Vector3> points);
  external Box3 setFromCenterAndSize(Vector3 center, Vector3 size);
  external Box3 setFromObject(Object3D object);
  external Box3 clone();
  external Box3 copy(Box3 box);
  external Box3 makeEmpty();
  external bool isEmpty();
  external Vector3 center([Vector3 optionalTarget]);
  external Vector3 size([Vector3 optionalTarget]);
  external Box3 expandByPoint(Vector3 point);
  external Box3 expandByVector(Vector3 vector);
  external Box3 expandByScalar(num scalar);
  external bool containsPoint(Vector3 point);
  external bool containsBox(Box3 box);
  external Vector3 getParameter(Vector3 point);
  external bool intersectsBox(Box3 box);
  external bool intersectsSphere(Sphere sphere);
  external bool intersectsPlane(Plane plane);
  external Vector3 clampPoint(Vector3 point, [Vector3 optionalTarget]);
  external num distanceToPoint(Vector3 point);
  external Sphere getBoundingSphere([Sphere optionalTarget]);
  external Box3 intersect(Box3 box);
  external Box3 union(Box3 box);
  external Box3 applyMatrix4(Matrix4 matrix);
  external Box3 translate(Vector3 offset);
  external bool equals(Box3 box);
  external dynamic empty();
  external dynamic isIntersectionBox(dynamic b);
  external dynamic isIntersectionSphere(dynamic s);
}

@anonymous
@JS()
abstract class HSL {
  external num get h;
  external set h(num v);
  external num get s;
  external set s(num v);
  external num get l;
  external set l(num v);
  external factory HSL({num h, num s, num l});
}

/// Represents a color. See also [ColorUtils].
/// @example
/// var color = new THREE.Color( 0xff0000 );
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/math/Color.js">src/math/Color.js</a>
@JS("THREE.Color")
class Color {
  // @Ignore
  Color.fakeConstructor$();
  /*external factory Color([Color color]);*/
  /*external factory Color([String color]);*/
  /*external factory Color([num color]);*/
  /*external factory Color(num r, num g, num b);*/
  external factory Color([dynamic /*Color|String|num*/ color_r, num g, num b]);

  /// Red channel value between 0 and 1. Default is 1.
  external num get r;
  external set r(num v);

  /// Green channel value between 0 and 1. Default is 1.
  external num get g;
  external set g(num v);

  /// Blue channel value between 0 and 1. Default is 1.
  external num get b;
  external set b(num v);
  /*external Color JS$set(Color color);*/
  /*external Color JS$set(num color);*/
  /*external Color JS$set(String color);*/
  external Color JS$set(dynamic /*Color|num|String*/ color);
  external Color setScalar(num scalar);
  external Color setHex(num hex);

  /// Sets this color from RGB values.
  external Color setRGB(num r, num g, num b);

  /// Sets this color from HSL values.
  /// Based on MochiKit implementation by Bob Ippolito.
  external Color setHSL(num h, num s, num l);

  /// Sets this color from a CSS context style string.
  external Color setStyle(String style);

  /// Clones this color.
  external Color clone();

  /// Copies given color.
  external Color copy(Color color);

  /// Copies given color making conversion from gamma to linear space.
  external Color copyGammaToLinear(Color color, [num gammaFactor]);

  /// Copies given color making conversion from linear to gamma space.
  external Color copyLinearToGamma(Color color, [num gammaFactor]);

  /// Converts this color from gamma to linear space.
  external Color convertGammaToLinear();

  /// Converts this color from linear to gamma space.
  external Color convertLinearToGamma();

  /// Returns the hexadecimal value of this color.
  external num getHex();

  /// Returns the string formated hexadecimal value of this color.
  external String getHexString();
  external HSL getHSL();

  /// Returns the value of this color in CSS context style.
  /// Example: rgb(r, g, b)
  external String getStyle();
  external Color offsetHSL(num h, num s, num l);
  external Color add(Color color);
  external Color addColors(Color color1, Color color2);
  external Color addScalar(num s);
  external Color sub(Color color);
  external Color multiply(Color color);
  external Color multiplyScalar(num s);
  external Color lerp(Color color, num alpha);
  external bool equals(Color color);
  external Color fromArray(List<num> rgb, [num offset]);
  external List<num> toArray([List<num> array, num offset]);
}

// Module ColorKeywords
@JS("THREE.ColorKeywords.aliceblue")
external num get aliceblue;
@JS("THREE.ColorKeywords.antiquewhite")
external num get antiquewhite;
@JS("THREE.ColorKeywords.aqua")
external num get aqua;
@JS("THREE.ColorKeywords.aquamarine")
external num get aquamarine;
@JS("THREE.ColorKeywords.azure")
external num get azure;
@JS("THREE.ColorKeywords.beige")
external num get beige;
@JS("THREE.ColorKeywords.bisque")
external num get bisque;
@JS("THREE.ColorKeywords.black")
external num get black;
@JS("THREE.ColorKeywords.blanchedalmond")
external num get blanchedalmond;
@JS("THREE.ColorKeywords.blue")
external num get blue;
@JS("THREE.ColorKeywords.blueviolet")
external num get blueviolet;
@JS("THREE.ColorKeywords.brown")
external num get brown;
@JS("THREE.ColorKeywords.burlywood")
external num get burlywood;
@JS("THREE.ColorKeywords.cadetblue")
external num get cadetblue;
@JS("THREE.ColorKeywords.chartreuse")
external num get chartreuse;
@JS("THREE.ColorKeywords.chocolate")
external num get chocolate;
@JS("THREE.ColorKeywords.coral")
external num get coral;
@JS("THREE.ColorKeywords.cornflowerblue")
external num get cornflowerblue;
@JS("THREE.ColorKeywords.cornsilk")
external num get cornsilk;
@JS("THREE.ColorKeywords.crimson")
external num get crimson;
@JS("THREE.ColorKeywords.cyan")
external num get cyan;
@JS("THREE.ColorKeywords.darkblue")
external num get darkblue;
@JS("THREE.ColorKeywords.darkcyan")
external num get darkcyan;
@JS("THREE.ColorKeywords.darkgoldenrod")
external num get darkgoldenrod;
@JS("THREE.ColorKeywords.darkgray")
external num get darkgray;
@JS("THREE.ColorKeywords.darkgreen")
external num get darkgreen;
@JS("THREE.ColorKeywords.darkgrey")
external num get darkgrey;
@JS("THREE.ColorKeywords.darkkhaki")
external num get darkkhaki;
@JS("THREE.ColorKeywords.darkmagenta")
external num get darkmagenta;
@JS("THREE.ColorKeywords.darkolivegreen")
external num get darkolivegreen;
@JS("THREE.ColorKeywords.darkorange")
external num get darkorange;
@JS("THREE.ColorKeywords.darkorchid")
external num get darkorchid;
@JS("THREE.ColorKeywords.darkred")
external num get darkred;
@JS("THREE.ColorKeywords.darksalmon")
external num get darksalmon;
@JS("THREE.ColorKeywords.darkseagreen")
external num get darkseagreen;
@JS("THREE.ColorKeywords.darkslateblue")
external num get darkslateblue;
@JS("THREE.ColorKeywords.darkslategray")
external num get darkslategray;
@JS("THREE.ColorKeywords.darkslategrey")
external num get darkslategrey;
@JS("THREE.ColorKeywords.darkturquoise")
external num get darkturquoise;
@JS("THREE.ColorKeywords.darkviolet")
external num get darkviolet;
@JS("THREE.ColorKeywords.deeppink")
external num get deeppink;
@JS("THREE.ColorKeywords.deepskyblue")
external num get deepskyblue;
@JS("THREE.ColorKeywords.dimgray")
external num get dimgray;
@JS("THREE.ColorKeywords.dimgrey")
external num get dimgrey;
@JS("THREE.ColorKeywords.dodgerblue")
external num get dodgerblue;
@JS("THREE.ColorKeywords.firebrick")
external num get firebrick;
@JS("THREE.ColorKeywords.floralwhite")
external num get floralwhite;
@JS("THREE.ColorKeywords.forestgreen")
external num get forestgreen;
@JS("THREE.ColorKeywords.fuchsia")
external num get fuchsia;
@JS("THREE.ColorKeywords.gainsboro")
external num get gainsboro;
@JS("THREE.ColorKeywords.ghostwhite")
external num get ghostwhite;
@JS("THREE.ColorKeywords.gold")
external num get gold;
@JS("THREE.ColorKeywords.goldenrod")
external num get goldenrod;
@JS("THREE.ColorKeywords.gray")
external num get gray;
@JS("THREE.ColorKeywords.green")
external num get green;
@JS("THREE.ColorKeywords.greenyellow")
external num get greenyellow;
@JS("THREE.ColorKeywords.grey")
external num get grey;
@JS("THREE.ColorKeywords.honeydew")
external num get honeydew;
@JS("THREE.ColorKeywords.hotpink")
external num get hotpink;
@JS("THREE.ColorKeywords.indianred")
external num get indianred;
@JS("THREE.ColorKeywords.indigo")
external num get indigo;
@JS("THREE.ColorKeywords.ivory")
external num get ivory;
@JS("THREE.ColorKeywords.khaki")
external num get khaki;
@JS("THREE.ColorKeywords.lavender")
external num get lavender;
@JS("THREE.ColorKeywords.lavenderblush")
external num get lavenderblush;
@JS("THREE.ColorKeywords.lawngreen")
external num get lawngreen;
@JS("THREE.ColorKeywords.lemonchiffon")
external num get lemonchiffon;
@JS("THREE.ColorKeywords.lightblue")
external num get lightblue;
@JS("THREE.ColorKeywords.lightcoral")
external num get lightcoral;
@JS("THREE.ColorKeywords.lightcyan")
external num get lightcyan;
@JS("THREE.ColorKeywords.lightgoldenrodyellow")
external num get lightgoldenrodyellow;
@JS("THREE.ColorKeywords.lightgray")
external num get lightgray;
@JS("THREE.ColorKeywords.lightgreen")
external num get lightgreen;
@JS("THREE.ColorKeywords.lightgrey")
external num get lightgrey;
@JS("THREE.ColorKeywords.lightpink")
external num get lightpink;
@JS("THREE.ColorKeywords.lightsalmon")
external num get lightsalmon;
@JS("THREE.ColorKeywords.lightseagreen")
external num get lightseagreen;
@JS("THREE.ColorKeywords.lightskyblue")
external num get lightskyblue;
@JS("THREE.ColorKeywords.lightslategray")
external num get lightslategray;
@JS("THREE.ColorKeywords.lightslategrey")
external num get lightslategrey;
@JS("THREE.ColorKeywords.lightsteelblue")
external num get lightsteelblue;
@JS("THREE.ColorKeywords.lightyellow")
external num get lightyellow;
@JS("THREE.ColorKeywords.lime")
external num get lime;
@JS("THREE.ColorKeywords.limegreen")
external num get limegreen;
@JS("THREE.ColorKeywords.linen")
external num get linen;
@JS("THREE.ColorKeywords.magenta")
external num get magenta;
@JS("THREE.ColorKeywords.maroon")
external num get maroon;
@JS("THREE.ColorKeywords.mediumaquamarine")
external num get mediumaquamarine;
@JS("THREE.ColorKeywords.mediumblue")
external num get mediumblue;
@JS("THREE.ColorKeywords.mediumorchid")
external num get mediumorchid;
@JS("THREE.ColorKeywords.mediumpurple")
external num get mediumpurple;
@JS("THREE.ColorKeywords.mediumseagreen")
external num get mediumseagreen;
@JS("THREE.ColorKeywords.mediumslateblue")
external num get mediumslateblue;
@JS("THREE.ColorKeywords.mediumspringgreen")
external num get mediumspringgreen;
@JS("THREE.ColorKeywords.mediumturquoise")
external num get mediumturquoise;
@JS("THREE.ColorKeywords.mediumvioletred")
external num get mediumvioletred;
@JS("THREE.ColorKeywords.midnightblue")
external num get midnightblue;
@JS("THREE.ColorKeywords.mintcream")
external num get mintcream;
@JS("THREE.ColorKeywords.mistyrose")
external num get mistyrose;
@JS("THREE.ColorKeywords.moccasin")
external num get moccasin;
@JS("THREE.ColorKeywords.navajowhite")
external num get navajowhite;
@JS("THREE.ColorKeywords.navy")
external num get navy;
@JS("THREE.ColorKeywords.oldlace")
external num get oldlace;
@JS("THREE.ColorKeywords.olive")
external num get olive;
@JS("THREE.ColorKeywords.olivedrab")
external num get olivedrab;
@JS("THREE.ColorKeywords.orange")
external num get orange;
@JS("THREE.ColorKeywords.orangered")
external num get orangered;
@JS("THREE.ColorKeywords.orchid")
external num get orchid;
@JS("THREE.ColorKeywords.palegoldenrod")
external num get palegoldenrod;
@JS("THREE.ColorKeywords.palegreen")
external num get palegreen;
@JS("THREE.ColorKeywords.paleturquoise")
external num get paleturquoise;
@JS("THREE.ColorKeywords.palevioletred")
external num get palevioletred;
@JS("THREE.ColorKeywords.papayawhip")
external num get papayawhip;
@JS("THREE.ColorKeywords.peachpuff")
external num get peachpuff;
@JS("THREE.ColorKeywords.peru")
external num get peru;
@JS("THREE.ColorKeywords.pink")
external num get pink;
@JS("THREE.ColorKeywords.plum")
external num get plum;
@JS("THREE.ColorKeywords.powderblue")
external num get powderblue;
@JS("THREE.ColorKeywords.purple")
external num get purple;
@JS("THREE.ColorKeywords.red")
external num get red;
@JS("THREE.ColorKeywords.rosybrown")
external num get rosybrown;
@JS("THREE.ColorKeywords.royalblue")
external num get royalblue;
@JS("THREE.ColorKeywords.saddlebrown")
external num get saddlebrown;
@JS("THREE.ColorKeywords.salmon")
external num get salmon;
@JS("THREE.ColorKeywords.sandybrown")
external num get sandybrown;
@JS("THREE.ColorKeywords.seagreen")
external num get seagreen;
@JS("THREE.ColorKeywords.seashell")
external num get seashell;
@JS("THREE.ColorKeywords.sienna")
external num get sienna;
@JS("THREE.ColorKeywords.silver")
external num get silver;
@JS("THREE.ColorKeywords.skyblue")
external num get skyblue;
@JS("THREE.ColorKeywords.slateblue")
external num get slateblue;
@JS("THREE.ColorKeywords.slategray")
external num get slategray;
@JS("THREE.ColorKeywords.slategrey")
external num get slategrey;
@JS("THREE.ColorKeywords.snow")
external num get snow;
@JS("THREE.ColorKeywords.springgreen")
external num get springgreen;
@JS("THREE.ColorKeywords.steelblue")
external num get steelblue;
@JS("THREE.ColorKeywords.tan")
external num get tan;
@JS("THREE.ColorKeywords.teal")
external num get teal;
@JS("THREE.ColorKeywords.thistle")
external num get thistle;
@JS("THREE.ColorKeywords.tomato")
external num get tomato;
@JS("THREE.ColorKeywords.turquoise")
external num get turquoise;
@JS("THREE.ColorKeywords.violet")
external num get violet;
@JS("THREE.ColorKeywords.wheat")
external num get wheat;
@JS("THREE.ColorKeywords.white")
external num get white;
@JS("THREE.ColorKeywords.whitesmoke")
external num get whitesmoke;
@JS("THREE.ColorKeywords.yellow")
external num get yellow;
@JS("THREE.ColorKeywords.yellowgreen")
external num get yellowgreen;

// End module ColorKeywords
@JS("THREE.Euler")
class Euler {
  // @Ignore
  Euler.fakeConstructor$();
  external factory Euler([num x, num y, num z, String order]);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get z;
  external set z(num v);
  external String get order;
  external set order(String v);
  external Function get onChangeCallback;
  external set onChangeCallback(Function v);
  external Euler JS$set(num x, num y, num z, [String order]);
  external Euler clone();
  external Euler copy(Euler euler);
  external Euler setFromRotationMatrix(Matrix4 m, [String order, bool update]);
  external Euler setFromQuaternion(Quaternion q, [String order, bool update]);
  external Euler setFromVector3(Vector3 v, [String order]);
  external Euler reorder(String newOrder);
  external bool equals(Euler euler);
  external Euler fromArray(List<dynamic> xyzo);
  external List<num> toArray([List<num> array, num offset]);
  external Vector3 toVector3([Vector3 optionalResult]);
  external void onChange(Function callback);
  external static List<String> get RotationOrders;
  external static set RotationOrders(List<String> v);
  external static String get DefaultOrder;
  external static set DefaultOrder(String v);
}

/// Frustums are used to determine what is inside the camera's field of view. They help speed up the rendering process.
@JS("THREE.Frustum")
class Frustum {
  // @Ignore
  Frustum.fakeConstructor$();
  external factory Frustum(
      [Plane p0, Plane p1, Plane p2, Plane p3, Plane p4, Plane p5]);

  /// Array of 6 vectors.
  external List<Plane> get planes;
  external set planes(List<Plane> v);
  external Frustum JS$set([num p0, num p1, num p2, num p3, num p4, num p5]);
  external Frustum clone();
  external Frustum copy(Frustum frustum);
  external Frustum setFromMatrix(Matrix4 m);
  /*external bool intersectsObject(Object3D object);*/
  /*external bool intersectsObject(Sprite sprite);*/
  external bool intersectsObject(dynamic /*Object3D|Sprite*/ object_sprite);
  external bool intersectsSphere(Sphere sphere);
  external bool intersectsBox(Box3 box);
  external bool containsPoint(Vector3 point);
}

@JS("THREE.Line3")
class Line3 {
  // @Ignore
  Line3.fakeConstructor$();
  external factory Line3([Vector3 start, Vector3 end]);
  external Vector3 get start;
  external set start(Vector3 v);
  external Vector3 get end;
  external set end(Vector3 v);
  external Line3 JS$set([Vector3 start, Vector3 end]);
  external Line3 clone();
  external Line3 copy(Line3 line);
  external Vector3 center([Vector3 optionalTarget]);
  external Vector3 delta([Vector3 optionalTarget]);
  external num distanceSq();
  external num distance();
  external Vector3 at(num t, [Vector3 optionalTarget]);
  external num closestPointToPointParameter(Vector3 point, [bool clampToLine]);
  external Vector3 closestPointToPoint(Vector3 point,
      [bool clampToLine, Vector3 optionalTarget]);
  external Line3 applyMatrix4(Matrix4 matrix);
  external bool equals(Line3 line);
}

/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/math/Math.js">src/math/Math.js</a>

// Module Math
@JS("THREE.Math.DEG2RAD")
external num get DEG2RAD;
@JS("THREE.Math.RAD2DEG")
external num get RAD2DEG;
@JS("THREE.Math.generateUUID")
external String generateUUID();

/// Clamps the x to be between a and b.
@JS("THREE.Math.clamp")
external num clamp(num value, num min, num max);
@JS("THREE.Math.euclideanModulo")
external num euclideanModulo(num n, num m);

/// Linear mapping of x from range [a1, a2] to range [b1, b2].
@JS("THREE.Math.mapLinear")
external num mapLinear(num x, num a1, num a2, num b1, num b2);
@JS("THREE.Math.smoothstep")
external num smoothstep(num x, num min, num max);
@JS("THREE.Math.smootherstep")
external num smootherstep(num x, num min, num max);

/// Random float from 0 to 1 with 16 bits of randomness.
/// Standard Math.random() creates repetitive patterns when applied over larger space.
@JS("THREE.Math.random16")
external num random16();

/// Random integer from low to high interval.
@JS("THREE.Math.randInt")
external num randInt(num low, num high);

/// Random float from low to high interval.
@JS("THREE.Math.randFloat")
external num randFloat(num low, num high);

/// Random float from - range / 2 to range / 2 interval.
@JS("THREE.Math.randFloatSpread")
external num randFloatSpread(num range);
@JS("THREE.Math.degToRad")
external num degToRad(num degrees);
@JS("THREE.Math.radToDeg")
external num radToDeg(num radians);
@JS("THREE.Math.isPowerOfTwo")
external bool isPowerOfTwo(num value);
@JS("THREE.Math.nearestPowerOfTwo")
external num nearestPowerOfTwo(num value);
@JS("THREE.Math.nextPowerOfTwo")
external num nextPowerOfTwo(num value);

// End module Math
/// ( interface Matrix&lt;T&gt; )
@anonymous
@JS()
abstract class Matrix {
  /// Float32Array with matrix values.
  external Float32List get elements;
  external set elements(Float32List v);

  /// identity():T;
  external Matrix identity();

  /// copy(m:T):T;
  external Matrix copy(Matrix m);

  /// multiplyScalar(s:number):T;
  external Matrix multiplyScalar(num s);
  external num determinant();

  /// getInverse(matrix:T, throwOnInvertible?:boolean):T;
  external Matrix getInverse(Matrix matrix, [bool throwOnInvertible]);

  /// transpose():T;
  external Matrix transpose();

  /// clone():T;
  external Matrix clone();
}

/// ( class Matrix3 implements Matrix&lt;Matrix3&gt; )
@JS("THREE.Matrix3")
class Matrix3 implements Matrix {
  // @Ignore
  Matrix3.fakeConstructor$();

  /// Creates an identity matrix.
  external factory Matrix3();

  /// Float32Array with matrix values.
  external Float32List get elements;
  external set elements(Float32List v);
  external Matrix3 JS$set(num n11, num n12, num n13, num n21, num n22, num n23,
      num n31, num n32, num n33);
  external Matrix3 identity();
  external Matrix3 clone();
  external Matrix3 copy(Matrix3 m);
  external Matrix3 setFromMatrix4(Matrix4 m);
  external ArrayLike<num> applyToVector3Array(ArrayLike<num> array,
      [num offset, num length]);
  external BufferAttribute applyToBuffer(BufferAttribute buffer,
      [num offset, num length]);
  external Matrix3 multiplyScalar(num s);
  external num determinant();
  /*external Matrix3 getInverse(Matrix3 matrix, [bool throwOnDegenerate]);*/
  /*external Matrix3 getInverse(Matrix4 matrix, [bool throwOnDegenerate]);*/
  external Matrix3 getInverse(dynamic /*Matrix3|Matrix4*/ matrix,
      [bool throwOnDegenerate]);

  /// Transposes this matrix in place.
  external Matrix3 transpose();
  external Matrix3 getNormalMatrix(Matrix4 matrix4);

  /// Transposes this matrix into the supplied array r, and returns itself.
  external List<num> transposeIntoArray(List<num> r);
  external Matrix3 fromArray(List<num> array);
  external List<num> toArray();

  /// deprecated
  external dynamic multiplyVector3(Vector3 vector);
  external dynamic multiplyVector3Array(dynamic a);
  external List<num> flattenToArrayOffset(List<num> array, num offset);
}

/// A 4x4 Matrix.
/// @example
/// // Simple rig for rotating around 3 axes
/// var m = new THREE.Matrix4();
/// var m1 = new THREE.Matrix4();
/// var m2 = new THREE.Matrix4();
/// var m3 = new THREE.Matrix4();
/// var alpha = 0;
/// var beta = Math.PI;
/// var gamma = Math.PI/2;
/// m1.makeRotationX( alpha );
/// m2.makeRotationY( beta );
/// m3.makeRotationZ( gamma );
/// m.multiplyMatrices( m1, m2 );
/// m.multiply( m3 );
@JS("THREE.Matrix4")
class Matrix4 implements Matrix {
  // @Ignore
  Matrix4.fakeConstructor$();
  external factory Matrix4();

  /// Float32Array with matrix values.
  external Float32List get elements;
  external set elements(Float32List v);

  /// Sets all fields of this matrix.
  external Matrix4 JS$set(
      num n11,
      num n12,
      num n13,
      num n14,
      num n21,
      num n22,
      num n23,
      num n24,
      num n31,
      num n32,
      num n33,
      num n34,
      num n41,
      num n42,
      num n43,
      num n44);

  /// Resets this matrix to identity.
  external Matrix4 identity();
  external Matrix4 clone();
  external Matrix4 copy(Matrix4 m);
  external Matrix4 copyPosition(Matrix4 m);
  external Matrix4 extractBasis(Vector3 xAxis, Vector3 yAxis, Vector3 zAxis);
  external Matrix4 makeBasis(Vector3 xAxis, Vector3 yAxis, Vector3 zAxis);

  /// Copies the rotation component of the supplied matrix m into this matrix rotation component.
  external Matrix4 extractRotation(Matrix4 m);
  external Matrix4 makeRotationFromEuler(Euler euler);
  external Matrix4 makeRotationFromQuaternion(Quaternion q);

  /// Constructs a rotation matrix, looking from eye towards center with defined up vector.
  external Matrix4 lookAt(Vector3 eye, Vector3 target, Vector3 up);

  /// Multiplies this matrix by m.
  external Matrix4 multiply(Matrix4 m);
  external Matrix4 premultiply(Matrix4 m);

  /// Sets this matrix to a x b.
  external Matrix4 multiplyMatrices(Matrix4 a, Matrix4 b);

  /// Sets this matrix to a x b and stores the result into the flat array r.
  /// r can be either a regular Array or a TypedArray.
  external Matrix4 multiplyToArray(Matrix4 a, Matrix4 b, List<num> r);

  /// Multiplies this matrix by s.
  external Matrix4 multiplyScalar(num s);
  external ArrayLike<num> applyToVector3Array(ArrayLike<num> array,
      [num offset, num length]);
  external BufferAttribute applyToBuffer(BufferAttribute buffer,
      [num offset, num length]);

  /// Computes determinant of this matrix.
  /// Based on http://www.euclideanspace.com/maths/algebra/matrix/functions/inverse/fourD/index.htm
  external num determinant();

  /// Transposes this matrix.
  external Matrix4 transpose();

  /// Sets the position component for this matrix from vector v.
  external Matrix4 setPosition(Vector3 v);

  /// Sets this matrix to the inverse of matrix m.
  /// Based on http://www.euclideanspace.com/maths/algebra/matrix/functions/inverse/fourD/index.htm.
  external Matrix4 getInverse(Matrix4 m, [bool throwOnDegeneratee]);

  /// Multiplies the columns of this matrix by vector v.
  external Matrix4 scale(Vector3 v);
  external num getMaxScaleOnAxis();

  /// Sets this matrix as translation transform.
  external Matrix4 makeTranslation(num x, num y, num z);

  /// Sets this matrix as rotation transform around x axis by theta radians.
  external Matrix4 makeRotationX(num theta);

  /// Sets this matrix as rotation transform around y axis by theta radians.
  external Matrix4 makeRotationY(num theta);

  /// Sets this matrix as rotation transform around z axis by theta radians.
  external Matrix4 makeRotationZ(num theta);

  /// Sets this matrix as rotation transform around axis by angle radians.
  /// Based on http://www.gamedev.net/reference/articles/article1199.asp.
  external Matrix4 makeRotationAxis(Vector3 axis, num angle);

  /// Sets this matrix as scale transform.
  external Matrix4 makeScale(num x, num y, num z);

  /// Sets this matrix to the transformation composed of translation, rotation and scale.
  external Matrix4 compose(
      Vector3 translation, Quaternion rotation, Vector3 scale);

  /// Decomposes this matrix into the translation, rotation and scale components.
  /// If parameters are not passed, new instances will be created.
  external List<Object> decompose(
      [Vector3 translation, Quaternion rotation, Vector3 scale]);

  /// Creates a frustum matrix.
  external Matrix4 makeFrustum(
      num left, num right, num bottom, num top, num near, num far);

  /// Creates a perspective projection matrix.
  external Matrix4 makePerspective(num fov, num aspect, num near, num far);

  /// Creates an orthographic projection matrix.
  external Matrix4 makeOrthographic(
      num left, num right, num top, num bottom, num near, num far);
  external bool equals(Matrix4 matrix);
  external Matrix4 fromArray(List<num> array);
  external List<num> toArray();

  /// deprecated
  external Matrix4 extractPosition(Matrix4 m);
  external Matrix4 setRotationFromQuaternion(Quaternion q);
  external dynamic multiplyVector3(dynamic v);
  external dynamic multiplyVector4(dynamic v);
  external List<num> multiplyVector3Array(List<num> array);
  external void rotateAxis(dynamic v);
  external void crossVector(dynamic v);
  external List<num> flattenToArrayOffset(List<num> array, num offset);
}

@JS("THREE.Plane")
class Plane {
  // @Ignore
  Plane.fakeConstructor$();
  external factory Plane([Vector3 normal, num constant]);
  external Vector3 get normal;
  external set normal(Vector3 v);
  external num get constant;
  external set constant(num v);
  external Plane JS$set(Vector3 normal, num constant);
  external Plane setComponents(num x, num y, num z, num w);
  external Plane setFromNormalAndCoplanarPoint(Vector3 normal, Vector3 point);
  external Plane setFromCoplanarPoints(Vector3 a, Vector3 b, Vector3 c);
  external Plane clone();
  external Plane copy(Plane plane);
  external Plane normalize();
  external Plane negate();
  external num distanceToPoint(Vector3 point);
  external num distanceToSphere(Sphere sphere);
  external Vector3 projectPoint(Vector3 point, [Vector3 optionalTarget]);
  external Vector3 orthoPoint(Vector3 point, [Vector3 optionalTarget]);
  external Vector3 intersectLine(Line3 line, [Vector3 optionalTarget]);
  external bool intersectsLine(Line3 line);
  external bool intersectsBox(Box3 box);
  external Vector3 coplanarPoint([bool optionalTarget]);
  external Plane applyMatrix4(Matrix4 matrix, [Matrix3 optionalNormalMatrix]);
  external Plane translate(Vector3 offset);
  external bool equals(Plane plane);

  /// deprecated
  external dynamic isIntersectionLine(dynamic l);
}

@JS("THREE.Spherical")
class Spherical {
  // @Ignore
  Spherical.fakeConstructor$();
  external factory Spherical([num radius, num phi, num theta]);
  external Spherical JS$set(num radius, num phi, num theta);
  external Spherical clone();
  external Spherical copy(Spherical other);
  external void makeSafe();
  external Spherical setFromVector3(Vector3 vec3);
}

/// Implementation of a quaternion. This is used for rotating things without incurring in the dreaded gimbal lock issue, amongst other advantages.
/// @example
/// var quaternion = new THREE.Quaternion();
/// quaternion.setFromAxisAngle( new THREE.Vector3( 0, 1, 0 ), Math.PI / 2 );
/// var vector = new THREE.Vector3( 1, 0, 0 );
/// vector.applyQuaternion( quaternion );
@JS("THREE.Quaternion")
class Quaternion {
  // @Ignore
  Quaternion.fakeConstructor$();
  external factory Quaternion([num x, num y, num z, num w]);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get z;
  external set z(num v);
  external num get w;
  external set w(num v);

  /// Sets values of this quaternion.
  external Quaternion JS$set(num x, num y, num z, num w);

  /// Clones this quaternion.
  external Quaternion clone();

  /// Copies values of q to this quaternion.
  external Quaternion copy(Quaternion q);

  /// Sets this quaternion from rotation specified by Euler angles.
  external Quaternion setFromEuler(Euler euler, [bool update]);

  /// Sets this quaternion from rotation specified by axis and angle.
  /// Adapted from http://www.euclideanspace.com/maths/geometry/rotations/conversions/angleToQuaternion/index.htm.
  /// Axis have to be normalized, angle is in radians.
  external Quaternion setFromAxisAngle(Vector3 axis, num angle);

  /// Sets this quaternion from rotation component of m. Adapted from http://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToQuaternion/index.htm.
  external Quaternion setFromRotationMatrix(Matrix4 m);
  external Quaternion setFromUnitVectors(Vector3 vFrom, Vector3 vTo);

  /// Inverts this quaternion.
  external Quaternion inverse();
  external Quaternion conjugate();
  external num dot(Vector3 v);
  external num lengthSq();

  /// Computes length of this quaternion.
  external num length();

  /// Normalizes this quaternion.
  external Quaternion normalize();

  /// Multiplies this quaternion by b.
  external Quaternion multiply(Quaternion q);
  external Quaternion premultiply(Quaternion q);

  /// Sets this quaternion to a x b
  /// Adapted from http://www.euclideanspace.com/maths/algebra/realNormedAlgebra/quaternions/code/index.htm.
  external Quaternion multiplyQuaternions(Quaternion a, Quaternion b);
  /*external Quaternion slerp(Quaternion qb, num t);*/
  /// Adapted from http://www.euclideanspace.com/maths/algebra/realNormedAlgebra/quaternions/slerp/.
  /*external static Quaternion slerp(Quaternion qa, Quaternion qb, Quaternion qm, num t);*/
  external Quaternion slerp(Quaternion qb_qa, dynamic /*num|Quaternion*/ t_qb,
      [Quaternion qm, num t]);
  external bool equals(Quaternion v);
  /*external Quaternion fromArray(List<num> n);*/
  /*external Quaternion fromArray(List<num> xyzw, [num offset]);*/
  external Quaternion fromArray(List<num> n_xyzw, [num offset]);
  /*external List<num> toArray();*/
  /*external List<num> toArray([List<num> xyzw, num offset]);*/
  external List<num> toArray([List<num> xyzw, num offset]);
  external Quaternion onChange(Function callback);
  external Function get onChangeCallback;
  external set onChangeCallback(Function v);
  external static Quaternion slerpFlat(List<num> dst, num dstOffset,
      List<num> src0, num srcOffset, List<num> src1, num stcOffset1, num t);

  /// deprecated
  external dynamic multiplyVector3(dynamic v);
}

@JS("THREE.Ray")
class Ray {
  // @Ignore
  Ray.fakeConstructor$();
  external factory Ray([Vector3 origin, Vector3 direction]);
  external Vector3 get origin;
  external set origin(Vector3 v);
  external Vector3 get direction;
  external set direction(Vector3 v);
  external Ray JS$set(Vector3 origin, Vector3 direction);
  external Ray clone();
  external Ray copy(Ray ray);
  external Vector3 at(num t, [Vector3 optionalTarget]);
  external Vector3 lookAt(Vector3 v);
  external Ray recast(num t);
  external Vector3 closestPointToPoint(Vector3 point, [Vector3 optionalTarget]);
  external num distanceToPoint(Vector3 point);
  external num distanceSqToPoint(Vector3 point);
  external num distanceSqToSegment(Vector3 v0, Vector3 v1,
      [Vector3 optionalPointOnRay, Vector3 optionalPointOnSegment]);
  external Vector3 intersectSphere(Sphere sphere, [Vector3 optionalTarget]);
  external bool intersectsSphere(Sphere sphere);
  external num distanceToPlane(Plane plane);
  external Vector3 intersectPlane(Plane plane, [Vector3 optionalTarget]);
  external bool intersectsPlane(Plane plane);
  external Vector3 intersectBox(Box3 box, [Vector3 optionalTarget]);
  external bool intersectsBox(Box3 box);
  external Vector3 intersectTriangle(
      Vector3 a, Vector3 b, Vector3 c, bool backfaceCulling,
      [Vector3 optionalTarget]);
  external Ray applyMatrix4(Matrix4 matrix4);
  external bool equals(Ray ray);

  /// deprecated
  external dynamic isIntersectionBox(dynamic b);
  external dynamic isIntersectionPlane(dynamic p);
  external dynamic isIntersectionSphere(dynamic s);
}

@JS("THREE.Sphere")
class Sphere {
  // @Ignore
  Sphere.fakeConstructor$();
  external factory Sphere([Vector3 center, num radius]);
  external Vector3 get center;
  external set center(Vector3 v);
  external num get radius;
  external set radius(num v);
  external Sphere JS$set(Vector3 center, num radius);
  external Sphere setFromPoints(List<Vector3> points, [Vector3 optionalCenter]);
  external Sphere clone();
  external Sphere copy(Sphere sphere);
  external bool empty();
  external bool containsPoint(Vector3 point);
  external num distanceToPoint(Vector3 point);
  external bool intersectsSphere(Sphere sphere);
  external bool intersectsBox(Box3 box);
  external bool intersectsPlane(Plane plane);
  external Vector3 clampPoint(Vector3 point, [Vector3 optionalTarget]);
  external Box3 getBoundingBox([Box3 optionalTarget]);
  external Sphere applyMatrix4(Matrix4 matrix);
  external Sphere translate(Vector3 offset);
  external bool equals(Sphere sphere);
}

@anonymous
@JS()
abstract class SplineControlPoint {
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get z;
  external set z(num v);
  external factory SplineControlPoint({num x, num y, num z});
}

/// Represents a spline.
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/math/Spline.js">src/math/Spline.js</a>
@JS("THREE.Spline")
class Spline {
  // @Ignore
  Spline.fakeConstructor$();

  /// Initialises the spline with points, which are the places through which the spline will go.
  external factory Spline(List<SplineControlPoint> points);
  external List<SplineControlPoint> get points;
  external set points(List<SplineControlPoint> v);

  /// Initialises using the data in the array as a series of points. Each value in a must be another array with three values, where a[n] is v, the value for the nth point, and v[0], v[1] and v[2] are the x, y and z coordinates of that point n, respectively.
  external void initFromArray(List<List<num>> a);

  /// Return the interpolated point at k.
  external SplineControlPoint getPoint(num k);

  /// Returns an array with triplets of x, y, z coordinates that correspond to the current control points.
  external List<List<num>> getControlPointsArray();

  /// Returns the length of the spline when using nSubDivisions.
  external dynamic /*{ chunks: number[]; total: number; }*/ getLength(
      [num nSubDivisions]);

  /// Modifies the spline so that it looks similar to the original but has its points distributed in such way that moving along the spline it's done at a more or less constant speed. The points should also appear more uniformly spread along the curve.
  /// This is done by resampling the original spline, with the density of sampling controlled by samplingCoef. Here it's interesting to note that denser sampling is not necessarily better: if sampling is too high, you may get weird kinks in curvature.
  external void reparametrizeByArcLength(num samplingCoef);
}

@JS("THREE.Triangle")
class Triangle {
  // @Ignore
  Triangle.fakeConstructor$();
  external factory Triangle([Vector3 a, Vector3 b, Vector3 c]);
  external Vector3 get a;
  external set a(Vector3 v);
  external Vector3 get b;
  external set b(Vector3 v);
  external Vector3 get c;
  external set c(Vector3 v);
  external Triangle JS$set(Vector3 a, Vector3 b, Vector3 c);
  external Triangle setFromPointsAndIndices(
      List<Vector3> points, num i0, num i1, num i2);
  external Triangle clone();
  external Triangle copy(Triangle triangle);
  external num area();
  external Vector3 midpoint([Vector3 optionalTarget]);
  /*external Vector3 normal([Vector3 optionalTarget]);*/
  /*external static Vector3 normal(Vector3 a, Vector3 b, Vector3 c, [Vector3 optionalTarget]);*/
  external Vector3 normal(
      [Vector3 optionalTarget_a, Vector3 b, Vector3 c, Vector3 optionalTarget]);
  external Plane plane([Vector3 optionalTarget]);
  /*external Vector3 barycoordFromPoint(Vector3 point, [Vector3 optionalTarget]);*/
  /*external static Vector3 barycoordFromPoint(Vector3 point, Vector3 a, Vector3 b, Vector3 c, Vector3 optionalTarget);*/
  external Vector3 barycoordFromPoint(Vector3 point,
      [Vector3 optionalTarget_a, Vector3 b, Vector3 c, Vector3 optionalTarget]);
  /*external bool containsPoint(Vector3 point);*/
  /*external static bool containsPoint(Vector3 point, Vector3 a, Vector3 b, Vector3 c);*/
  external bool containsPoint(Vector3 point, [Vector3 a, Vector3 b, Vector3 c]);
  external Vector3 closestPointToPoint();
  external bool equals(Triangle triangle);
}

/// ( interface Vector&lt;T&gt; )
/// Abstract interface of Vector2, Vector3 and Vector4.
/// Currently the members of Vector is NOT type safe because it accepts different typed vectors.
/// Those definitions will be changed when TypeScript innovates Generics to be type safe.
/// @example
/// var v:THREE.Vector = new THREE.Vector3();
/// v.addVectors(new THREE.Vector2(0, 1), new THREE.Vector2(2, 3));    // invalid but compiled successfully
@anonymous
@JS()
abstract class Vector {
  external void setComponent(num index, num value);
  external num getComponent(num index);

  /// copy(v:T):T;
  external Vector copy(Vector v);

  /// add(v:T):T;
  external Vector add(Vector v);

  /// addVectors(a:T, b:T):T;
  external Vector addVectors(Vector a, Vector b);

  /// sub(v:T):T;
  external Vector sub(Vector v);

  /// subVectors(a:T, b:T):T;
  external Vector subVectors(Vector a, Vector b);

  /// multiplyScalar(s:number):T;
  external Vector multiplyScalar(num s);

  /// divideScalar(s:number):T;
  external Vector divideScalar(num s);

  /// negate():T;
  external Vector negate();

  /// dot(v:T):T;
  external num dot(Vector v);

  /// lengthSq():number;
  external num lengthSq();

  /// length():number;
  external num length();

  /// normalize():T;
  external Vector normalize();

  /// NOTE: Vector4 doesn't have the property.
  /// distanceTo(v:T):number;
  external num distanceTo(Vector v);

  /// NOTE: Vector4 doesn't have the property.
  /// distanceToSquared(v:T):number;
  external num distanceToSquared(Vector v);

  /// setLength(l:number):T;
  external Vector setLength(num l);

  /// lerp(v:T, alpha:number):T;
  external Vector lerp(Vector v, num alpha);

  /// equals(v:T):boolean;
  external bool equals(Vector v);

  /// clone():T;
  external Vector clone();
}

/// 2D vector.
/// ( class Vector2 implements Vector<Vector2> )
@JS("THREE.Vector2")
class Vector2 implements Vector {
  // @Ignore
  Vector2.fakeConstructor$();
  external factory Vector2([num x, num y]);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);

  /// Sets value of this vector.
  external Vector2 JS$set(num x, num y);
  external Vector2 setScalar(num scalar);

  /// Sets X component of this vector.
  external Vector2 setX(num x);

  /// Sets Y component of this vector.
  external Vector2 setY(num y);

  /// Sets a component of this vector.
  external void setComponent(num index, num value);

  /// Gets a component of this vector.
  external num getComponent(num index);

  /// Clones this vector.
  external Vector2 clone();

  /// Copies value of v to this vector.
  external Vector2 copy(Vector2 v);

  /// Adds v to this vector.
  external Vector2 add(Vector2 v);

  /// Sets this vector to a + b.
  external Vector2 addScalar(num s);
  external Vector2 addVectors(Vector2 a, Vector2 b);
  external Vector2 addScaledVector(Vector2 v, num s);

  /// Subtracts v from this vector.
  external Vector2 sub(Vector2 v);

  /// Sets this vector to a - b.
  external Vector2 subVectors(Vector2 a, Vector2 b);
  external Vector2 multiply(Vector2 v);

  /// Multiplies this vector by scalar s.
  external Vector2 multiplyScalar(num scalar);
  external Vector2 divide(Vector2 v);

  /// Divides this vector by scalar s.
  /// Set vector to ( 0, 0 ) if s == 0.
  external Vector2 divideScalar(num s);
  external Vector2 min(Vector2 v);
  external Vector2 max(Vector2 v);
  external Vector2 clamp(Vector2 min, Vector2 max);
  external Vector2 clampScalar(num min, num max);
  external Vector2 clampLength(num min, num max);
  external Vector2 floor();
  external Vector2 ceil();
  external Vector2 round();
  external Vector2 roundToZero();

  /// Inverts this vector.
  external Vector2 negate();

  /// Computes dot product of this vector and v.
  external num dot(Vector2 v);

  /// Computes squared length of this vector.
  external num lengthSq();

  /// Computes length of this vector.
  external num length();
  external num lengthManhattan();

  /// Normalizes this vector.
  external Vector2 normalize();

  /// computes the angle in radians with respect to the positive x-axis
  external num angle();

  /// Computes distance of this vector to v.
  external num distanceTo(Vector2 v);

  /// Computes squared distance of this vector to v.
  external num distanceToSquared(Vector2 v);
  external num distanceToManhattan(Vector2 v);

  /// Normalizes this vector and multiplies it by l.
  external Vector2 setLength(num length);
  external Vector2 lerp(Vector2 v, num alpha);
  external Vector2 lerpVectors(Vector2 v1, Vector2 v2, num alpha);

  /// Checks for strict equality of this vector and v.
  external bool equals(Vector2 v);
  external Vector2 fromArray(List<num> xy, [num offset]);
  external List<num> toArray([List<num> xy, num offset]);
  external Vector2 fromAttribute(BufferAttribute attribute, num index,
      [num offset]);
  external Vector2 rotateAround(Vector2 center, num angle);
}

/// 3D vector.
/// @example
/// var a = new THREE.Vector3( 1, 0, 0 );
/// var b = new THREE.Vector3( 0, 1, 0 );
/// var c = new THREE.Vector3();
/// c.crossVectors( a, b );
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/math/Vector3.js">src/math/Vector3.js</a>
/// ( class Vector3 implements Vector<Vector3> )
@JS("THREE.Vector3")
class Vector3 implements Vector {
  // @Ignore
  Vector3.fakeConstructor$();
  external factory Vector3([num x, num y, num z]);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get z;
  external set z(num v);

  /// Sets value of this vector.
  external Vector3 JS$set(num x, num y, num z);

  /// Sets all values of this vector.
  external Vector3 setScalar(num scalar);

  /// Sets x value of this vector.
  external Vector3 setX(num x);

  /// Sets y value of this vector.
  external Vector3 setY(num y);

  /// Sets z value of this vector.
  external Vector3 setZ(num z);
  external void setComponent(num index, num value);
  external num getComponent(num index);

  /// Clones this vector.
  external Vector3 clone();

  /// Copies value of v to this vector.
  external Vector3 copy(Vector3 v);

  /// Adds v to this vector.
  external Vector3 add(Vector3 a);
  external Vector3 addScalar(num s);
  external Vector3 addScaledVector(Vector3 v, num s);

  /// Sets this vector to a + b.
  external Vector3 addVectors(Vector3 a, Vector3 b);

  /// Subtracts v from this vector.
  external Vector3 sub(Vector3 a);
  external Vector3 subScalar(num s);

  /// Sets this vector to a - b.
  external Vector3 subVectors(Vector3 a, Vector3 b);
  external Vector3 multiply(Vector3 v);

  /// Multiplies this vector by scalar s.
  external Vector3 multiplyScalar(num s);
  external Vector3 multiplyVectors(Vector3 a, Vector3 b);
  external Vector3 applyEuler(Euler euler);
  external Vector3 applyAxisAngle(Vector3 axis, num angle);
  external Vector3 applyMatrix3(Matrix3 m);
  external Vector3 applyMatrix4(Matrix4 m);
  external Vector3 applyProjection(Matrix4 m);
  external Vector3 applyQuaternion(Quaternion q);
  external Vector3 project(Camera camrea);
  external Vector3 unproject(Camera camera);
  external Vector3 transformDirection(Matrix4 m);
  external Vector3 divide(Vector3 v);

  /// Divides this vector by scalar s.
  /// Set vector to ( 0, 0, 0 ) if s == 0.
  external Vector3 divideScalar(num s);
  external Vector3 min(Vector3 v);
  external Vector3 max(Vector3 v);
  external Vector3 clamp(Vector3 min, Vector3 max);
  external Vector3 clampScalar(num min, num max);
  external Vector3 clampLength(num min, num max);
  external Vector3 floor();
  external Vector3 ceil();
  external Vector3 round();
  external Vector3 roundToZero();

  /// Inverts this vector.
  external Vector3 negate();

  /// Computes dot product of this vector and v.
  external num dot(Vector3 v);

  /// Computes squared length of this vector.
  external num lengthSq();

  /// Computes length of this vector.
  external num length();

  /// Computes Manhattan length of this vector.
  /// http://en.wikipedia.org/wiki/Taxicab_geometry
  external num lengthManhattan();

  /// Normalizes this vector.
  external Vector3 normalize();

  /// Normalizes this vector and multiplies it by l.
  external Vector3 setLength(num l);
  external Vector3 lerp(Vector3 v, num alpha);
  external Vector3 lerpVectors(Vector3 v1, Vector3 v2, num alpha);

  /// Sets this vector to cross product of itself and v.
  external Vector3 cross(Vector3 a);

  /// Sets this vector to cross product of a and b.
  external Vector3 crossVectors(Vector3 a, Vector3 b);
  external Vector3 projectOnVector(Vector3 v);
  external Vector3 projectOnPlane(Vector3 planeNormal);
  external Vector3 reflect(Vector3 vector);
  external num angleTo(Vector3 v);

  /// Computes distance of this vector to v.
  external num distanceTo(Vector3 v);

  /// Computes squared distance of this vector to v.
  external num distanceToSquared(Vector3 v);
  external num distanceToManhattan(Vector3 v);
  external Matrix3 setFromSpherical(Spherical s);
  external Vector3 setFromMatrixPosition(Matrix4 m);
  external Vector3 setFromMatrixScale(Matrix4 m);
  external Vector3 setFromMatrixColumn(Matrix4 matrix, num index);

  /// Checks for strict equality of this vector and v.
  external bool equals(Vector3 v);
  external Vector3 fromArray(List<num> xyz, [num offset]);
  external List<num> toArray([List<num> xyz, num offset]);
  external Vector3 fromAttribute(BufferAttribute attribute, num index,
      [num offset]);

  /// deprecated
  external Vector3 getPositionFromMatrix(Matrix4 m);
  external Vector3 getScaleFromMatrix(Matrix4 m);
  external Vector3 getColumnFromMatrix(num index, Matrix4 matrix);
}

@JS("THREE.Vertex")
class Vertex extends Vector3 {
  // @Ignore
  Vertex.fakeConstructor$() : super.fakeConstructor$();
}

/// 4D vector.
/// ( class Vector4 implements Vector<Vector4> )
@JS("THREE.Vector4")
class Vector4 implements Vector {
  // @Ignore
  Vector4.fakeConstructor$();
  external factory Vector4([num x, num y, num z, num w]);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get z;
  external set z(num v);
  external num get w;
  external set w(num v);

  /// Sets value of this vector.
  external Vector4 JS$set(num x, num y, num z, num w);

  /// Sets all values of this vector.
  external Vector4 setScalar(num scalar);

  /// Sets X component of this vector.
  external Vector4 setX(num x);

  /// Sets Y component of this vector.
  external Vector4 setY(num y);

  /// Sets Z component of this vector.
  external Vector4 setZ(num z);

  /// Sets w component of this vector.
  external Vector4 setW(num w);
  external void setComponent(num index, num value);
  external num getComponent(num index);

  /// Clones this vector.
  external Vector4 clone();

  /// Copies value of v to this vector.
  external Vector4 copy(Vector4 v);

  /// Adds v to this vector.
  external Vector4 add(Vector4 v);
  external Vector4 addScalar(num s);

  /// Sets this vector to a + b.
  external Vector4 addVectors(Vector4 a, Vector4 b);
  external Vector4 addScaledVector(Vector4 v, num s);

  /// Subtracts v from this vector.
  external Vector4 sub(Vector4 v);
  external Vector4 subScalar(num s);

  /// Sets this vector to a - b.
  external Vector4 subVectors(Vector4 a, Vector4 b);

  /// Multiplies this vector by scalar s.
  external Vector4 multiplyScalar(num s);
  external Vector4 applyMatrix4(Matrix4 m);

  /// Divides this vector by scalar s.
  /// Set vector to ( 0, 0, 0 ) if s == 0.
  external Vector4 divideScalar(num s);

  /// http://www.euclideanspace.com/maths/geometry/rotations/conversions/quaternionToAngle/index.htm
  external Vector4 setAxisAngleFromQuaternion(Quaternion q);

  /// http://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToAngle/index.htm
  external Vector4 setAxisAngleFromRotationMatrix(Matrix3 m);
  external Vector4 min(Vector4 v);
  external Vector4 max(Vector4 v);
  external Vector4 clamp(Vector4 min, Vector4 max);
  external Vector4 clampScalar(num min, num max);
  external Vector4 floor();
  external Vector4 ceil();
  external Vector4 round();
  external Vector4 roundToZero();

  /// Inverts this vector.
  external Vector4 negate();

  /// Computes dot product of this vector and v.
  external num dot(Vector4 v);

  /// Computes squared length of this vector.
  external num lengthSq();

  /// Computes length of this vector.
  external num length();
  external num lengthManhattan();

  /// Normalizes this vector.
  external Vector4 normalize();

  /// Normalizes this vector and multiplies it by l.
  external Vector4 setLength(num length);

  /// Linearly interpolate between this vector and v with alpha factor.
  external Vector4 lerp(Vector4 v, num alpha);
  external Vector4 lerpVectors(Vector4 v1, Vector4 v2, num alpha);

  /// Checks for strict equality of this vector and v.
  external bool equals(Vector4 v);
  external Vector4 fromArray(List<num> xyzw, [num offset]);
  external List<num> toArray([List<num> xyzw, num offset]);
  external Vector4 fromAttribute(BufferAttribute attribute, num index,
      [num offset]);
}

@JS("THREE.Interpolant")
abstract class Interpolant {
  // @Ignore
  Interpolant.fakeConstructor$();
  external factory Interpolant(
      dynamic parameterPositions, dynamic samplesValues, num sampleSize,
      [dynamic resultBuffer]);
  external dynamic get parameterPositions;
  external set parameterPositions(dynamic v);
  external dynamic get samplesValues;
  external set samplesValues(dynamic v);
  external num get valueSize;
  external set valueSize(num v);
  external dynamic get resultBuffer;
  external set resultBuffer(dynamic v);
  external dynamic evaluate(num time);
}

@JS("THREE.CubicInterpolant")
class CubicInterpolant extends Interpolant {
  // @Ignore
  CubicInterpolant.fakeConstructor$() : super.fakeConstructor$();
  external factory CubicInterpolant(
      dynamic parameterPositions, dynamic samplesValues, num sampleSize,
      [dynamic resultBuffer]);
  external dynamic interpolate_(num i1, num t0, num t, num t1);
}

@JS("THREE.DiscreteInterpolant")
class DiscreteInterpolant extends Interpolant {
  // @Ignore
  DiscreteInterpolant.fakeConstructor$() : super.fakeConstructor$();
  external factory DiscreteInterpolant(
      dynamic parameterPositions, dynamic samplesValues, num sampleSize,
      [dynamic resultBuffer]);
  external dynamic interpolate_(num i1, num t0, num t, num t1);
}

@JS("THREE.LinearInterpolant")
class LinearInterpolant extends Interpolant {
  // @Ignore
  LinearInterpolant.fakeConstructor$() : super.fakeConstructor$();
  external factory LinearInterpolant(
      dynamic parameterPositions, dynamic samplesValues, num sampleSize,
      [dynamic resultBuffer]);
  external dynamic interpolate_(num i1, num t0, num t, num t1);
}

@JS("THREE.QuaternionLinearInterpolant")
class QuaternionLinearInterpolant extends Interpolant {
  // @Ignore
  QuaternionLinearInterpolant.fakeConstructor$() : super.fakeConstructor$();
  external factory QuaternionLinearInterpolant(
      dynamic parameterPositions, dynamic samplesValues, num sampleSize,
      [dynamic resultBuffer]);
  external dynamic interpolate_(num i1, num t0, num t, num t1);
}

/// Objects //////////////////////////////////////////////////////////////////////////////////
@JS("THREE.Bone")
class Bone extends Object3D {
  // @Ignore
  Bone.fakeConstructor$() : super.fakeConstructor$();
  external factory Bone(SkinnedMesh skin);
  external SkinnedMesh get skin;
  external set skin(SkinnedMesh v);
  external Bone clone();
  external Bone copy(Bone source);
}

@JS("THREE.Group")
class Group extends Object3D {
  // @Ignore
  Group.fakeConstructor$() : super.fakeConstructor$();
  external factory Group();
}

@JS("THREE.LOD")
class LOD extends Object3D {
  // @Ignore
  LOD.fakeConstructor$() : super.fakeConstructor$();
  external factory LOD();
  external List<dynamic> get levels;
  external set levels(List<dynamic> v);
  external void addLevel(Object3D object, [num distance]);
  external Object3D getObjectForDistance(num distance);
  external void raycast(Raycaster raycaster, dynamic intersects);
  external void update(Camera camera);
  external LOD clone();
  external LOD copy(LOD source);
  external dynamic toJSON(dynamic meta);

  /// deprecated
  external List<dynamic> get objects;
  external set objects(List<dynamic> v);
}

@anonymous
@JS()
abstract class LensFlareProperty {
  external Texture get texture;
  external set texture(Texture v);
  external num get size;
  external set size(num v);
  external num get distance;
  external set distance(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get z;
  external set z(num v);
  external num get scale;
  external set scale(num v);
  external num get rotation;
  external set rotation(num v);
  external num get opacity;
  external set opacity(num v);
  external Color get color;
  external set color(Color v);
  external num /*enum Blending*/ get blending;
  external set blending(num /*enum Blending*/ v);
  external factory LensFlareProperty(
      {Texture texture,
      num size,
      num distance,
      num x,
      num y,
      num z,
      num scale,
      num rotation,
      num opacity,
      Color color,
      num /*enum Blending*/ blending});
}

@JS("THREE.LensFlare")
class LensFlare extends Object3D {
  // @Ignore
  LensFlare.fakeConstructor$() : super.fakeConstructor$();
  external factory LensFlare(
      [Texture texture,
      num size,
      num distance,
      num /*enum Blending*/ blending,
      Color color]);
  external List<LensFlareProperty> get lensFlares;
  external set lensFlares(List<LensFlareProperty> v);
  external Vector3 get positionScreen;
  external set positionScreen(Vector3 v);
  external VoidFunc1<LensFlare> get customUpdateCallback;
  external set customUpdateCallback(VoidFunc1<LensFlare> v);
  /*external void add(Object3D object);*/
  /*external void add(Texture texture, [num size, num distance, enum Blending blending, Color color]);*/
  external void add(dynamic /*Object3D|Texture*/ object_texture,
      [num size, num distance, num /*enum Blending*/ blending, Color color]);
  external void updateLensFlares();
  external LensFlare clone();
  external LensFlare copy(LensFlare source);
}

@JS("THREE.Line")
class Line extends Object3D {
  // @Ignore
  Line.fakeConstructor$() : super.fakeConstructor$();
  external factory Line(
      [dynamic /*Geometry|BufferGeometry*/ geometry,
      dynamic /*LineDashedMaterial|LineBasicMaterial|ShaderMaterial*/ material,
      num mode]);
  external dynamic /*Geometry|BufferGeometry*/ get geometry;
  external set geometry(dynamic /*Geometry|BufferGeometry*/ v);
  external Material get material;
  external set material(Material v);
  external void raycast(Raycaster raycaster, dynamic intersects);
  external Line clone();
  external Line copy(Line source);
}

@JS("THREE.LineStrip")
external num get LineStrip;
@JS("THREE.LinePieces")
external num get LinePieces;

@JS("THREE.LineSegments")
class LineSegments extends Line {
  // @Ignore
  LineSegments.fakeConstructor$() : super.fakeConstructor$();
  external factory LineSegments(
      [dynamic /*Geometry|BufferGeometry*/ geometry,
      dynamic /*LineDashedMaterial|LineBasicMaterial|ShaderMaterial*/ material,
      num mode]);
  external LineSegments clone();
  external LineSegments copy(LineSegments source);
}

@JS("THREE.LineMode")
class LineMode {}

@JS("THREE.Mesh")
class Mesh extends Object3D {
  // @Ignore
  Mesh.fakeConstructor$() : super.fakeConstructor$();
  /*external factory Mesh([Geometry geometry, Material material]);*/
  /*external factory Mesh([BufferGeometry geometry, Material material]);*/
  external factory Mesh(
      [dynamic /*Geometry|BufferGeometry*/ geometry, Material material]);
  external dynamic /*Geometry|BufferGeometry*/ get geometry;
  external set geometry(dynamic /*Geometry|BufferGeometry*/ v);
  external Material get material;
  external set material(Material v);
  external num /*enum TrianglesDrawModes*/ get drawMode;
  external set drawMode(num /*enum TrianglesDrawModes*/ v);
  external void setDrawMode(num /*enum TrianglesDrawModes*/ drawMode);
  external void updateMorphTargets();
  external num getMorphTargetIndexByName(String name);
  external void raycast(Raycaster raycaster, dynamic intersects);
  external Mesh clone();
  external Mesh copy(Mesh source);
}

/// A class for displaying particles in the form of variable size points. For example, if using the WebGLRenderer, the particles are displayed using GL_POINTS.
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/objects/ParticleSystem.js">src/objects/ParticleSystem.js</a>
@JS("THREE.Points")
class Points extends Object3D {
  // @Ignore
  Points.fakeConstructor$() : super.fakeConstructor$();
  external factory Points(
      [dynamic /*Geometry|BufferGeometry*/ geometry, Material material]);

  /// An instance of Geometry or BufferGeometry, where each vertex designates the position of a particle in the system.
  external dynamic /*Geometry|BufferGeometry*/ get geometry;
  external set geometry(dynamic /*Geometry|BufferGeometry*/ v);

  /// An instance of Material, defining the object's appearance. Default is a PointsMaterial with randomised colour.
  external Material get material;
  external set material(Material v);
  external void raycast(Raycaster raycaster, dynamic intersects);
  external Points clone();
  external Points copy(Points source);
}

@JS("THREE.PointCloud")
class PointCloud extends Points {
  // @Ignore
  PointCloud.fakeConstructor$() : super.fakeConstructor$();
}

@JS("THREE.ParticleSystem")
class ParticleSystem extends Points {
  // @Ignore
  ParticleSystem.fakeConstructor$() : super.fakeConstructor$();
}

@JS("THREE.Skeleton")
class Skeleton {
  // @Ignore
  Skeleton.fakeConstructor$();
  external factory Skeleton(List<Bone> bones,
      [List<Matrix4> boneInverses, bool useVertexTexture]);
  external bool get useVertexTexture;
  external set useVertexTexture(bool v);
  external Matrix4 get identityMatrix;
  external set identityMatrix(Matrix4 v);
  external List<Bone> get bones;
  external set bones(List<Bone> v);
  external num get boneTextureWidth;
  external set boneTextureWidth(num v);
  external num get boneTextureHeight;
  external set boneTextureHeight(num v);
  external Float32List get boneMatrices;
  external set boneMatrices(Float32List v);
  external DataTexture get boneTexture;
  external set boneTexture(DataTexture v);
  external List<Matrix4> get boneInverses;
  external set boneInverses(List<Matrix4> v);
  external void calculateInverses(Bone bone);
  external void pose();
  external void update();
  external Skeleton clone();
}

@JS("THREE.SkinnedMesh")
class SkinnedMesh extends Mesh {
  // @Ignore
  SkinnedMesh.fakeConstructor$() : super.fakeConstructor$();
  /*external factory SkinnedMesh([Geometry|BufferGeometry geometry, MeshBasicMaterial material, bool useVertexTexture]);*/
  /*external factory SkinnedMesh([Geometry|BufferGeometry geometry, MeshDepthMaterial material, bool useVertexTexture]);*/
  /*external factory SkinnedMesh([Geometry|BufferGeometry geometry, MultiMaterial material, bool useVertexTexture]);*/
  /*external factory SkinnedMesh([Geometry|BufferGeometry geometry, MeshLambertMaterial material, bool useVertexTexture]);*/
  /*external factory SkinnedMesh([Geometry|BufferGeometry geometry, MeshNormalMaterial material, bool useVertexTexture]);*/
  /*external factory SkinnedMesh([Geometry|BufferGeometry geometry, MeshPhongMaterial material, bool useVertexTexture]);*/
  /*external factory SkinnedMesh([Geometry|BufferGeometry geometry, ShaderMaterial material, bool useVertexTexture]);*/
  external factory SkinnedMesh(
      [dynamic /*Geometry|BufferGeometry*/ geometry,
      dynamic /*MeshBasicMaterial|MeshDepthMaterial|MultiMaterial|MeshLambertMaterial|MeshNormalMaterial|MeshPhongMaterial|ShaderMaterial*/ material,
      bool useVertexTexture]);
  external String get bindMode;
  external set bindMode(String v);
  external Matrix4 get bindMatrix;
  external set bindMatrix(Matrix4 v);
  external Matrix4 get bindMatrixInverse;
  external set bindMatrixInverse(Matrix4 v);
  external Skeleton get skeleton;
  external set skeleton(Skeleton v);
  external void bind(Skeleton skeleton, [Matrix4 bindMatrix]);
  external void pose();
  external void normalizeSkinWeights();
  external void updateMatrixWorld([bool force]);
  external SkinnedMesh clone();
  external SkinnedMesh copy(SkinnedMesh source);
}

@JS("THREE.Sprite")
class Sprite extends Object3D {
  // @Ignore
  Sprite.fakeConstructor$() : super.fakeConstructor$();
  external factory Sprite([Material material]);
  external BufferGeometry get geometry;
  external set geometry(BufferGeometry v);
  external SpriteMaterial get material;
  external set material(SpriteMaterial v);
  external void raycast(Raycaster raycaster, dynamic intersects);
  external Sprite clone();
  external Sprite copy(Sprite source);
}

@JS("THREE.Particle")
class Particle extends Sprite {
  // @Ignore
  Particle.fakeConstructor$() : super.fakeConstructor$();
}

/// Renderers //////////////////////////////////////////////////////////////////////////////////
@anonymous
@JS()
abstract class Renderer {
  external CanvasElement get domElement;
  external set domElement(CanvasElement v);
  external void render(Scene scene, Camera camera);
  external void setSize(num width, num height, [bool updateStyle]);
}

@anonymous
@JS()
abstract class WebGLRendererParameters {
  /// A Canvas where the renderer draws its output.
  external CanvasElement get canvas;
  external set canvas(CanvasElement v);

  /// shader precision. Can be "highp", "mediump" or "lowp".
  external String get precision;
  external set precision(String v);

  /// default is true.
  external bool get alpha;
  external set alpha(bool v);

  /// default is true.
  external bool get premultipliedAlpha;
  external set premultipliedAlpha(bool v);

  /// default is false.
  external bool get antialias;
  external set antialias(bool v);

  /// default is true.
  external bool get stencil;
  external set stencil(bool v);

  /// default is false.
  external bool get preserveDrawingBuffer;
  external set preserveDrawingBuffer(bool v);

  /// default is 0x000000.
  external num get clearColor;
  external set clearColor(num v);

  /// default is 0.
  external num get clearAlpha;
  external set clearAlpha(num v);
  external num get devicePixelRatio;
  external set devicePixelRatio(num v);

  /// default is false.
  external bool get logarithmicDepthBuffer;
  external set logarithmicDepthBuffer(bool v);
  external factory WebGLRendererParameters(
      {CanvasElement canvas,
      String precision,
      bool alpha,
      bool premultipliedAlpha,
      bool antialias,
      bool stencil,
      bool preserveDrawingBuffer,
      num clearColor,
      num clearAlpha,
      num devicePixelRatio,
      bool logarithmicDepthBuffer});
}

/// The WebGL renderer displays your beautifully crafted scenes using WebGL, if your device supports it.
/// This renderer has way better performance than CanvasRenderer.
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/renderers/WebGLRenderer.js">src/renderers/WebGLRenderer.js</a>
@JS("THREE.WebGLRenderer")
class WebGLRenderer implements Renderer {
  // @Ignore
  WebGLRenderer.fakeConstructor$();

  /// parameters is an optional object with properties defining the renderer's behaviour. The constructor also accepts no parameters at all. In all cases, it will assume sane defaults when parameters are missing.
  external factory WebGLRenderer([WebGLRendererParameters parameters]);

  /// A Canvas where the renderer draws its output.
  /// This is automatically created by the renderer in the constructor (if not provided already); you just need to add it to your page.
  external CanvasElement get domElement;
  external set domElement(CanvasElement v);

  /// The HTML5 Canvas's 'webgl' context obtained from the canvas where the renderer will draw.
  external RenderingContext get context;
  external set context(RenderingContext v);

  /// Defines whether the renderer should automatically clear its output before rendering.
  external bool get autoClear;
  external set autoClear(bool v);

  /// If autoClear is true, defines whether the renderer should clear the color buffer. Default is true.
  external bool get autoClearColor;
  external set autoClearColor(bool v);

  /// If autoClear is true, defines whether the renderer should clear the depth buffer. Default is true.
  external bool get autoClearDepth;
  external set autoClearDepth(bool v);

  /// If autoClear is true, defines whether the renderer should clear the stencil buffer. Default is true.
  external bool get autoClearStencil;
  external set autoClearStencil(bool v);

  /// Defines whether the renderer should sort objects. Default is true.
  external bool get sortObjects;
  external set sortObjects(bool v);
  external List<dynamic> get clippingPlanes;
  external set clippingPlanes(List<dynamic> v);
  external bool get localClippingEnabled;
  external set localClippingEnabled(bool v);
  external WebGLExtensions get extensions;
  external set extensions(WebGLExtensions v);

  /// Default is false.
  external bool get gammaInput;
  external set gammaInput(bool v);

  /// Default is false.
  external bool get gammaOutput;
  external set gammaOutput(bool v);
  external bool get physicallyCorrectLights;
  external set physicallyCorrectLights(bool v);
  external num /*enum ToneMapping*/ get toneMapping;
  external set toneMapping(num /*enum ToneMapping*/ v);
  external num get toneMappingExposure;
  external set toneMappingExposure(num v);
  external num get toneMappingWhitePoint;
  external set toneMappingWhitePoint(num v);

  /// Default is false.
  external bool get shadowMapDebug;
  external set shadowMapDebug(bool v);

  /// Default is 8.
  external num get maxMorphTargets;
  external set maxMorphTargets(num v);

  /// Default is 4.
  external num get maxMorphNormals;
  external set maxMorphNormals(num v);

  /// An object with a series of statistical information about the graphics board memory and the rendering process. Useful for debugging or just for the sake of curiosity. The object contains the following fields:
  external dynamic
      /*{
            memory: {
                geometries: number;
                textures: number;
            };
            render: {
                calls: number;
                vertices: number;
                faces: number;
                points: number;
            };
            programs: number;
        }*/
      get info;
  external set info(
      dynamic /*{
            memory: {
                geometries: number;
                textures: number;
            };
            render: {
                calls: number;
                vertices: number;
                faces: number;
                points: number;
            };
            programs: number;
        }*/
      v);
  external WebGLShadowMap get shadowMap;
  external set shadowMap(WebGLShadowMap v);
  external num get pixelRation;
  external set pixelRation(num v);
  external WebGLCapabilities get capabilities;
  external set capabilities(WebGLCapabilities v);
  external WebGLProperties get properties;
  external set properties(WebGLProperties v);
  external WebGLState get state;
  external set state(WebGLState v);
  external dynamic get allocTextureUnit;
  external set allocTextureUnit(dynamic v);

  /// Return the WebGL context.
  external RenderingContext getContext();
  external dynamic getContextAttributes();
  external void forceContextLoss();
  external num getMaxAnisotropy();
  external String getPrecision();
  external num getPixelRatio();
  external void setPixelRatio(num value);
  external dynamic /*{ width: number; height: number; }*/ getSize();

  /// Resizes the output canvas to (width, height), and also sets the viewport to fit that size, starting in (0, 0).
  external void setSize(num width, num height, [bool updateStyle]);

  /// Sets the viewport to render from (x, y) to (x + width, y + height).
  external void setViewport([num x, num y, num width, num height]);

  /// Sets the scissor area from (x, y) to (x + width, y + height).
  external void setScissor(num x, num y, num width, num height);

  /// Enable the scissor test. When this is enabled, only the pixels within the defined scissor area will be affected by further renderer actions.
  external void setScissorTest(bool enable);

  /// Returns a THREE.Color instance with the current clear color.
  external Color getClearColor();

  /// Sets the clear color, using color for the color and alpha for the opacity.
  /*external void setClearColor(Color color, [num alpha]);*/
  /*external void setClearColor(String color, [num alpha]);*/
  /*external void setClearColor(num color, [num alpha]);*/
  external void setClearColor(dynamic /*Color|String|num*/ color, [num alpha]);

  /// Returns a float with the current clear alpha. Ranges from 0 to 1.
  external num getClearAlpha();
  external void setClearAlpha(num alpha);

  /// Tells the renderer to clear its color, depth or stencil drawing buffer(s).
  /// Arguments default to true
  external void clear([bool color, bool depth, bool stencil]);
  external void clearColor();
  external void clearDepth();
  external void clearStencil();
  external void clearTarget(
      WebGLRenderTarget renderTarget, bool color, bool depth, bool stencil);
  external void resetGLState();
  external void dispose();

  /// Tells the shadow map plugin to update using the passed scene and camera parameters.
  external void renderBufferImmediate(
      Object3D object, Object program, Material material);
  external void renderBufferDirect(Camera camera, Fog fog, Material material,
      dynamic geometryGroup, Object3D object);

  /// Render a scene using a camera.
  /// The render is done to the renderTarget (if specified) or to the canvas as usual.
  /// If forceClear is true, the canvas will be cleared before rendering, even if the renderer's autoClear property is false.
  external void render(Scene scene, Camera camera,
      [RenderTarget renderTarget, bool forceClear]);

  /// Used for setting the gl frontFace, cullFace states in the GPU, thus enabling/disabling face culling when rendering.
  /// If cullFace is false, culling will be disabled.
  external void setFaceCulling(
      [num /*enum CullFace*/ cullFace,
      num /*enum FrontFaceDirection*/ frontFace]);
  external void setTexture(Texture texture, num slot);
  external void setTexture2D(Texture texture, num slot);
  external void setTextureCube(Texture texture, num slot);
  external RenderTarget getCurrentRenderTarget();
  external void setRenderTarget(RenderTarget renderTarget);
  external void readRenderTargetPixels(RenderTarget renderTarget, num x, num y,
      num width, num height, dynamic buffer);

  /// deprecated
  external num get gammaFactor;
  external set gammaFactor(num v);
  external bool get shadowMapEnabled;
  external set shadowMapEnabled(bool v);
  external num /*enum ShadowMapType*/ get shadowMapType;
  external set shadowMapType(num /*enum ShadowMapType*/ v);
  external num /*enum CullFace*/ get shadowMapCullFace;
  external set shadowMapCullFace(num /*enum CullFace*/ v);
  external dynamic supportsFloatTextures();
  external dynamic supportsHalfFloatTextures();
  external dynamic supportsStandardDerivatives();
  external dynamic supportsCompressedTextureS3TC();
  external dynamic supportsCompressedTexturePVRTC();
  external dynamic supportsBlendMinMax();
  external dynamic supportsVertexTextures();
  external dynamic supportsInstancedArrays();
  external dynamic enableScissorTest(dynamic boolean);
}

@anonymous
@JS()
abstract class RenderTarget {}

@anonymous
@JS()
abstract class WebGLRenderTargetOptions {
  external num /*enum Wrapping*/ get wrapS;
  external set wrapS(num /*enum Wrapping*/ v);
  external num /*enum Wrapping*/ get wrapT;
  external set wrapT(num /*enum Wrapping*/ v);
  external num /*enum TextureFilter*/ get magFilter;
  external set magFilter(num /*enum TextureFilter*/ v);
  external num /*enum TextureFilter*/ get minFilter;
  external set minFilter(num /*enum TextureFilter*/ v);
  external num get format;
  external set format(num v);
  external num /*enum TextureDataType*/ get type;
  external set type(num /*enum TextureDataType*/ v);
  external num get anisotropy;
  external set anisotropy(num v);
  external bool get depthBuffer;
  external set depthBuffer(bool v);
  external bool get stencilBuffer;
  external set stencilBuffer(bool v);
  external factory WebGLRenderTargetOptions(
      {num /*enum Wrapping*/ wrapS,
      num /*enum Wrapping*/ wrapT,
      num /*enum TextureFilter*/ magFilter,
      num /*enum TextureFilter*/ minFilter,
      num format,
      num /*enum TextureDataType*/ type,
      num anisotropy,
      bool depthBuffer,
      bool stencilBuffer});
}

@JS("THREE.WebGLRenderTarget")
class WebGLRenderTarget extends EventDispatcher {
  // @Ignore
  WebGLRenderTarget.fakeConstructor$() : super.fakeConstructor$();
  external factory WebGLRenderTarget(num width, num height,
      [WebGLRenderTargetOptions options]);
  external String get uuid;
  external set uuid(String v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external Vector4 get scissor;
  external set scissor(Vector4 v);
  external bool get scissorTest;
  external set scissorTest(bool v);
  external Vector4 get viewpport;
  external set viewpport(Vector4 v);
  external Texture get texture;
  external set texture(Texture v);
  external bool get depthBuffer;
  external set depthBuffer(bool v);
  external bool get stencilBuffer;
  external set stencilBuffer(bool v);
  external Texture get depthTexture;
  external set depthTexture(Texture v);
  external dynamic get wrapS;
  external set wrapS(dynamic v);
  external dynamic get wrapT;
  external set wrapT(dynamic v);
  external dynamic get magFilter;
  external set magFilter(dynamic v);
  external dynamic get minFilter;
  external set minFilter(dynamic v);
  external dynamic get anisotropy;
  external set anisotropy(dynamic v);
  external dynamic get offset;
  external set offset(dynamic v);
  external dynamic get repeat;
  external set repeat(dynamic v);
  external dynamic get format;
  external set format(dynamic v);
  external dynamic get type;
  external set type(dynamic v);
  external dynamic get generateMipmaps;
  external set generateMipmaps(dynamic v);
  external void setSize(num width, num height);
  external WebGLRenderTarget clone();
  external WebGLRenderTarget copy(WebGLRenderTarget source);
  external void dispose();
}

@JS("THREE.WebGLRenderTargetCube")
class WebGLRenderTargetCube extends WebGLRenderTarget {
  // @Ignore
  WebGLRenderTargetCube.fakeConstructor$() : super.fakeConstructor$();
  external factory WebGLRenderTargetCube(num width, num height,
      [WebGLRenderTargetOptions options]);
  external num get activeCubeFace;
  external set activeCubeFace(num v);
  external num get activeMipMapLevel;
  external set activeMipMapLevel(num v);
}

/// Renderers / Shaders /////////////////////////////////////////////////////////////////////
@JS("THREE.ShaderChunk")
external dynamic
    /*{
        [name: string]: string;

        alphamap_fragment: string;
        alphamap_pars_fragment: string;
        alphatest_fragment: string;
        aomap_fragment: string;
        aomap_pars_fragment: string;
        begin_vertex: string;
        beginnormal_vertex: string;
        bsdfs: string;
        bumpmap_pars_fragment: string;
        clipping_planes_fragment: string;
        clipping_planes_pars_fragment: string;
        clipping_planes_pars_vertex: string;
        clipping_planes_vertex: string;
        color_fragment: string;
        color_pars_fragment: string;
        color_pars_vertex: string;
        color_vertex: string;
        common: string;
        cube_frag: string;
        cube_vert: string;
        cube_uv_reflection_fragment: string;
        defaultnormal_vertex: string;
        depth_frag: string;
        depth_vert: string;
        distanceRGBA_frag: string;
        distanceRGBA_vert: string;
        displacementmap_vertex: string;
        displacementmap_pars_vertex: string;
        emissivemap_fragment: string;
        emissivemap_pars_fragment: string;
        encodings_pars_fragment: string;
        encodings_fragment: string;
        envmap_fragment: string;
        envmap_pars_fragment: string;
        envmap_pars_vertex: string;
        envmap_vertex: string;
        equirect_frag: string;
        equirect_vert: string;
        fog_fragment: string;
        fog_pars_fragment: string;
        linedashed_frag: string;
        linedashed_vert: string;
        lightmap_fragment: string;
        lightmap_pars_fragment: string;
        lights_lambert_vertex: string;
        lights_pars: string;
        lights_phong_fragment: string;
        lights_phong_pars_fragment: string;
        lights_physical_fragment: string;
        lights_physical_pars_fragment: string;
        lights_template: string;
        logdepthbuf_fragment: string;
        logdepthbuf_pars_fragment: string;
        logdepthbuf_pars_vertex: string;
        logdepthbuf_vertex: string;
        map_fragment: string;
        map_pars_fragment: string;
        map_particle_fragment: string;
        map_particle_pars_fragment: string;
        meshbasic_frag: string;
        meshbasic_vert: string;
        meshlambert_frag: string;
        meshlambert_vert: string;
        meshphong_frag: string;
        meshphong_vert: string;
        meshphysical_frag: string;
        meshphysical_vert: string;
        metalnessmap_fragment: string;
        metalnessmap_pars_fragment: string;
        morphnormal_vertex: string;
        morphtarget_pars_vertex: string;
        morphtarget_vertex: string;
        normal_flip: string;
        normal_frag: string;
        normal_fragment: string;
        normal_vert: string;
        normalmap_pars_fragment: string;
        packing: string;
        points_frag: string;
        points_vert: string;
        shadow_frag: string;
        shadow_vert: string;

        premultiplied_alpha_fragment: string;
        project_vertex: string;
        roughnessmap_fragment: string;
        roughnessmap_pars_fragment: string;
        shadowmap_pars_fragment: string;
        shadowmap_pars_vertex: string;
        shadowmap_vertex: string;
        shadowmask_pars_fragment: string;
        skinbase_vertex: string;
        skinning_pars_vertex: string;
        skinning_vertex: string;
        skinnormal_vertex: string;
        specularmap_fragment: string;
        specularmap_pars_fragment: string;
        tonemapping_fragment: string;
        tonemapping_pars_fragment: string;
        uv2_pars_fragment: string;
        uv2_pars_vertex: string;
        uv2_vertex: string;
        uv_pars_fragment: string;
        uv_pars_vertex: string;
        uv_vertex: string;
        worldpos_vertex: string;
    }*/
    get ShaderChunk;
@JS("THREE.ShaderChunk")
external set ShaderChunk(
    dynamic /*{
        [name: string]: string;

        alphamap_fragment: string;
        alphamap_pars_fragment: string;
        alphatest_fragment: string;
        aomap_fragment: string;
        aomap_pars_fragment: string;
        begin_vertex: string;
        beginnormal_vertex: string;
        bsdfs: string;
        bumpmap_pars_fragment: string;
        clipping_planes_fragment: string;
        clipping_planes_pars_fragment: string;
        clipping_planes_pars_vertex: string;
        clipping_planes_vertex: string;
        color_fragment: string;
        color_pars_fragment: string;
        color_pars_vertex: string;
        color_vertex: string;
        common: string;
        cube_frag: string;
        cube_vert: string;
        cube_uv_reflection_fragment: string;
        defaultnormal_vertex: string;
        depth_frag: string;
        depth_vert: string;
        distanceRGBA_frag: string;
        distanceRGBA_vert: string;
        displacementmap_vertex: string;
        displacementmap_pars_vertex: string;
        emissivemap_fragment: string;
        emissivemap_pars_fragment: string;
        encodings_pars_fragment: string;
        encodings_fragment: string;
        envmap_fragment: string;
        envmap_pars_fragment: string;
        envmap_pars_vertex: string;
        envmap_vertex: string;
        equirect_frag: string;
        equirect_vert: string;
        fog_fragment: string;
        fog_pars_fragment: string;
        linedashed_frag: string;
        linedashed_vert: string;
        lightmap_fragment: string;
        lightmap_pars_fragment: string;
        lights_lambert_vertex: string;
        lights_pars: string;
        lights_phong_fragment: string;
        lights_phong_pars_fragment: string;
        lights_physical_fragment: string;
        lights_physical_pars_fragment: string;
        lights_template: string;
        logdepthbuf_fragment: string;
        logdepthbuf_pars_fragment: string;
        logdepthbuf_pars_vertex: string;
        logdepthbuf_vertex: string;
        map_fragment: string;
        map_pars_fragment: string;
        map_particle_fragment: string;
        map_particle_pars_fragment: string;
        meshbasic_frag: string;
        meshbasic_vert: string;
        meshlambert_frag: string;
        meshlambert_vert: string;
        meshphong_frag: string;
        meshphong_vert: string;
        meshphysical_frag: string;
        meshphysical_vert: string;
        metalnessmap_fragment: string;
        metalnessmap_pars_fragment: string;
        morphnormal_vertex: string;
        morphtarget_pars_vertex: string;
        morphtarget_vertex: string;
        normal_flip: string;
        normal_frag: string;
        normal_fragment: string;
        normal_vert: string;
        normalmap_pars_fragment: string;
        packing: string;
        points_frag: string;
        points_vert: string;
        shadow_frag: string;
        shadow_vert: string;

        premultiplied_alpha_fragment: string;
        project_vertex: string;
        roughnessmap_fragment: string;
        roughnessmap_pars_fragment: string;
        shadowmap_pars_fragment: string;
        shadowmap_pars_vertex: string;
        shadowmap_vertex: string;
        shadowmask_pars_fragment: string;
        skinbase_vertex: string;
        skinning_pars_vertex: string;
        skinning_vertex: string;
        skinnormal_vertex: string;
        specularmap_fragment: string;
        specularmap_pars_fragment: string;
        tonemapping_fragment: string;
        tonemapping_pars_fragment: string;
        uv2_pars_fragment: string;
        uv2_pars_vertex: string;
        uv2_vertex: string;
        uv_pars_fragment: string;
        uv_pars_vertex: string;
        uv_vertex: string;
        worldpos_vertex: string;
    }*/
    v);

@anonymous
@JS()
abstract class Shader {
  external IUniform get uniforms;
  external set uniforms(IUniform v);
  external String get vertexShader;
  external set vertexShader(String v);
  external String get fragmentShader;
  external set fragmentShader(String v);
  external factory Shader(
      {IUniform uniforms, String vertexShader, String fragmentShader});
}

@JS("THREE.ShaderLib")
external dynamic
    /*{
        [name: string]: Shader;
        basic: Shader;
        lambert: Shader;
        phong: Shader;
        standard: Shader;
        points: Shader;
        dashed: Shader;
        depth: Shader;
        normal: Shader;
        cube: Shader;
        equirect: Shader;
        depthRGBA: Shader;
        distanceRGBA: Shader;
        physical: Shader;
    }*/
    get ShaderLib;
@JS("THREE.ShaderLib")
external set ShaderLib(
    dynamic /*{
        [name: string]: Shader;
        basic: Shader;
        lambert: Shader;
        phong: Shader;
        standard: Shader;
        points: Shader;
        dashed: Shader;
        depth: Shader;
        normal: Shader;
        cube: Shader;
        equirect: Shader;
        depthRGBA: Shader;
        distanceRGBA: Shader;
        physical: Shader;
    }*/
    v);

@anonymous
@JS()
abstract class IUniform {
  external dynamic get value;
  external set value(dynamic v);
  external factory IUniform({dynamic value});
}

@JS("THREE.UniformsLib")
external dynamic
    /*{
        common: {
            diffuse: IUniform;
            opacity: IUniform;
            map: IUniform;
            offsetRepeat: IUniform;
            specularMap: IUniform;
            alphaMap: IUniform;
            envMap: IUniform;
            flipEnvMap: IUniform;
            reflectivity: IUniform;
            refractionRation: IUniform;
        };
        aomap: {
            aoMap: IUniform;
            aoMapIntensity: IUniform;
        };
        lightmap: {
            lightMap: IUniform;
            lightMapIntensity: IUniform;
        };
        emissivemap: { emissiveMap: IUniform };
        bumpmap: {
            bumpMap: IUniform;
            bumpScale: IUniform;
        };
        normalmap: {
            normalMap: IUniform;
            normalScale: IUniform;
        };
        displacementmap: {
            displacementMap: IUniform;
            displacementScale: IUniform;
            displacementBias: IUniform;
        };
        roughnessmap: { roughnessMap: IUniform };
        metalnessmap: { metalnessMap: IUniform };
        fog: {
            fogDensity: IUniform;
            fogNear: IUniform;
            fogFar: IUniform;
            fogColor: IUniform;
        };
        lights: {
            ambientLightColor: IUniform
            directionalLights: {
                value: any[];
                properties: {
                    direction: {};
                    color: {};
                    shadow: {};
                    shadowBias: {};
                    shadowRadius: {};
                    shadowMapSize: {};
                };
            };
            directionalShadowMap: IUniform;
            directionalShadowMatrix: IUniform;
            spotLights: {
                value: any[];
                properties: {
                    color: {};
                    position: {};
                    direction: {};
                    distance: {};
                    coneCos: {};
                    penumbraCos: {};
                    decay: {};
                    shadow: {};
                    shadowBias: {};
                    shadowRadius: {};
                    shadowMapSize: {};
                };
            };
            spotShadowMap: IUniform;
            spotShadowMatrix: IUniform;
            pointLights: {
                value: any[];
                properties: {
                    color: {};
                    position: {};
                    decay: {};
                    distance: {};
                    shadow: {};
                    shadowBias: {};
                    shadowRadius: {};
                    shadowMapSize: {};
                };
            };
            pointShadowMap: IUniform;
            pointShadowMatrix: IUniform;
            hemisphereLigtts: {
                value: any[];
                properties: {
                    direction: {};
                    skycolor: {};
                    groundColor: {};
                };
            };
        };
        points: {
            diffuse: IUniform;
            opacity: IUniform;
            size: IUniform;
            scale: IUniform;
            map: IUniform;
            offsetRepeat: IUniform;
        };
    }*/
    get UniformsLib;
@JS("THREE.UniformsLib")
external set UniformsLib(
    dynamic /*{
        common: {
            diffuse: IUniform;
            opacity: IUniform;
            map: IUniform;
            offsetRepeat: IUniform;
            specularMap: IUniform;
            alphaMap: IUniform;
            envMap: IUniform;
            flipEnvMap: IUniform;
            reflectivity: IUniform;
            refractionRation: IUniform;
        };
        aomap: {
            aoMap: IUniform;
            aoMapIntensity: IUniform;
        };
        lightmap: {
            lightMap: IUniform;
            lightMapIntensity: IUniform;
        };
        emissivemap: { emissiveMap: IUniform };
        bumpmap: {
            bumpMap: IUniform;
            bumpScale: IUniform;
        };
        normalmap: {
            normalMap: IUniform;
            normalScale: IUniform;
        };
        displacementmap: {
            displacementMap: IUniform;
            displacementScale: IUniform;
            displacementBias: IUniform;
        };
        roughnessmap: { roughnessMap: IUniform };
        metalnessmap: { metalnessMap: IUniform };
        fog: {
            fogDensity: IUniform;
            fogNear: IUniform;
            fogFar: IUniform;
            fogColor: IUniform;
        };
        lights: {
            ambientLightColor: IUniform
            directionalLights: {
                value: any[];
                properties: {
                    direction: {};
                    color: {};
                    shadow: {};
                    shadowBias: {};
                    shadowRadius: {};
                    shadowMapSize: {};
                };
            };
            directionalShadowMap: IUniform;
            directionalShadowMatrix: IUniform;
            spotLights: {
                value: any[];
                properties: {
                    color: {};
                    position: {};
                    direction: {};
                    distance: {};
                    coneCos: {};
                    penumbraCos: {};
                    decay: {};
                    shadow: {};
                    shadowBias: {};
                    shadowRadius: {};
                    shadowMapSize: {};
                };
            };
            spotShadowMap: IUniform;
            spotShadowMatrix: IUniform;
            pointLights: {
                value: any[];
                properties: {
                    color: {};
                    position: {};
                    decay: {};
                    distance: {};
                    shadow: {};
                    shadowBias: {};
                    shadowRadius: {};
                    shadowMapSize: {};
                };
            };
            pointShadowMap: IUniform;
            pointShadowMatrix: IUniform;
            hemisphereLigtts: {
                value: any[];
                properties: {
                    direction: {};
                    skycolor: {};
                    groundColor: {};
                };
            };
        };
        points: {
            diffuse: IUniform;
            opacity: IUniform;
            size: IUniform;
            scale: IUniform;
            map: IUniform;
            offsetRepeat: IUniform;
        };
    }*/
    v);
// Module UniformsUtils
@JS("THREE.UniformsUtils.merge")
external dynamic UniformsUtils_merge(List<dynamic> uniforms);
@JS("THREE.UniformsUtils.clone")
external dynamic clone(dynamic uniforms_src);

// End module UniformsUtils
@JS("THREE.Uniform")
class Uniform {
  // @Ignore
  Uniform.fakeConstructor$();
  /*external factory Uniform(dynamic value);*/
  /*external factory Uniform(String type, dynamic value);*/
  external factory Uniform(dynamic /*dynamic|String*/ value_type,
      [dynamic value]);
  external String get type;
  external set type(String v);
  external dynamic get value;
  external set value(dynamic v);
  external bool get JS$dynamic;
  external set JS$dynamic(bool v);
  external Function get onUpdateCallback;
  external set onUpdateCallback(Function v);
  external Uniform onUpdate(Function callback);
}

/// Renderers / WebGL /////////////////////////////////////////////////////////////////////
@JS("THREE.WebGLBufferRenderer")
class WebGLBufferRenderer {
  // @Ignore
  WebGLBufferRenderer.fakeConstructor$();
  external factory WebGLBufferRenderer(
      RenderingContext JS$_gl, dynamic extensions, dynamic JS$_infoRender);
  external void setMode(dynamic value);
  external void render(dynamic start, num count);
  external void renderInstances(dynamic geometry);
}

@JS("THREE.WebGLClipping")
class WebGLClipping {
  // @Ignore
  WebGLClipping.fakeConstructor$();
  external dynamic /*{ value: any, needsUpdate: boolean }*/ get uniform;
  external set uniform(dynamic /*{ value: any, needsUpdate: boolean }*/ v);
  external num get numPlanes;
  external set numPlanes(num v);
  external bool init(
      List<dynamic> planes, bool enableLocalClipping, Camera camera);
  external void beginShadows();
  external void endShadows();
  external void setState(List<dynamic> planes, bool clipShadows, Camera camera,
      bool cache, bool fromCache);
}

@anonymous
@JS()
abstract class WebGLCapabilitiesParameters {
  external dynamic get precision;
  external set precision(dynamic v);
  external dynamic get logarithmicDepthBuffer;
  external set logarithmicDepthBuffer(dynamic v);
  external factory WebGLCapabilitiesParameters(
      {dynamic precision, dynamic logarithmicDepthBuffer});
}

@JS("THREE.WebGLCapabilities")
class WebGLCapabilities {
  // @Ignore
  WebGLCapabilities.fakeConstructor$();
  external factory WebGLCapabilities(RenderingContext gl, dynamic extensions,
      WebGLCapabilitiesParameters parameters);
  external dynamic get precision;
  external set precision(dynamic v);
  external dynamic get logarithmicDepthBuffer;
  external set logarithmicDepthBuffer(dynamic v);
  external dynamic get maxTextures;
  external set maxTextures(dynamic v);
  external dynamic get maxVertexTextures;
  external set maxVertexTextures(dynamic v);
  external dynamic get maxTextureSize;
  external set maxTextureSize(dynamic v);
  external dynamic get maxCubemapSize;
  external set maxCubemapSize(dynamic v);
  external dynamic get maxAttributes;
  external set maxAttributes(dynamic v);
  external dynamic get maxVertexUniforms;
  external set maxVertexUniforms(dynamic v);
  external dynamic get maxVaryings;
  external set maxVaryings(dynamic v);
  external dynamic get maxFragmentUniforms;
  external set maxFragmentUniforms(dynamic v);
  external dynamic get vertexTextures;
  external set vertexTextures(dynamic v);
  external dynamic get floatFragmentTextures;
  external set floatFragmentTextures(dynamic v);
  external dynamic get floatVertexTextures;
  external set floatVertexTextures(dynamic v);
  external num getMaxAnisotropy();
  external String getMaxPrecision(String precision);
}

@JS("THREE.WebGLExtensions")
class WebGLExtensions {
  // @Ignore
  WebGLExtensions.fakeConstructor$();
  external factory WebGLExtensions(RenderingContext gl);
  external dynamic JS$get(String name);
}

@JS("THREE.WebGLGeometries")
class WebGLGeometries {
  // @Ignore
  WebGLGeometries.fakeConstructor$();
  external factory WebGLGeometries(
      RenderingContext gl, dynamic extensions, dynamic JS$_infoRender);
  external dynamic JS$get(dynamic object);
}

@JS("THREE.WebGLLights")
class WebGLLights {
  // @Ignore
  WebGLLights.fakeConstructor$();
  external factory WebGLLights(
      RenderingContext gl, dynamic properties, dynamic info);
  external dynamic JS$get(dynamic light);
}

@JS("THREE.WebGLIndexedBufferRenderer")
class WebGLIndexedBufferRenderer {
  // @Ignore
  WebGLIndexedBufferRenderer.fakeConstructor$();
  external factory WebGLIndexedBufferRenderer(
      RenderingContext gl, dynamic properties, dynamic info);
  external void setMode(dynamic value);
  external void setIndex(dynamic index);
  external void render(dynamic start, num count);
  external void renderInstances(dynamic geometry, dynamic start, num count);
}

@JS("THREE.WebGLObjects")
class WebGLObjects {
  // @Ignore
  WebGLObjects.fakeConstructor$();
  external factory WebGLObjects(
      RenderingContext gl, dynamic properties, dynamic info);
  external dynamic getAttributeBuffer(dynamic attribute);
  external dynamic getWireframeAttribute(dynamic geometry);
  external void update(dynamic object);
}

@JS("THREE.WebGLProgram")
class WebGLProgram {
  // @Ignore
  WebGLProgram.fakeConstructor$();
  external factory WebGLProgram(WebGLRenderer renderer, String code,
      ShaderMaterial material, WebGLRendererParameters parameters);
  external num get id;
  external set id(num v);
  external String get code;
  external set code(String v);
  external num get usedTimes;
  external set usedTimes(num v);
  external dynamic get program;
  external set program(dynamic v);
  external WebGLShader get vertexShader;
  external set vertexShader(WebGLShader v);
  external WebGLShader get fragmentShader;
  external set fragmentShader(WebGLShader v);
  external dynamic get uniforms;
  external set uniforms(dynamic v);
  external dynamic get attributes;
  external set attributes(dynamic v);
  external WebGLUniforms getUniforms();
  external dynamic getAttributes();
  external void destroy();
}

@JS("THREE.WebGLPrograms")
class WebGLPrograms {
  // @Ignore
  WebGLPrograms.fakeConstructor$();
  external factory WebGLPrograms(WebGLRenderer renderer, dynamic capabilities);
  external List<dynamic> get programs;
  external set programs(List<dynamic> v);
  external dynamic getParameters(ShaderMaterial material, dynamic lights,
      dynamic fog, num nClipPlanes, dynamic object);
  external String getProgramCode(ShaderMaterial material, dynamic parameters);
  external WebGLProgram acquireProgram(
      ShaderMaterial material, dynamic parameters, String code);
  external void releaseProgram(WebGLProgram program);
}

@JS("THREE.WebGLTextures")
class WebGLTextures {
  // @Ignore
  WebGLTextures.fakeConstructor$();
  external factory WebGLTextures(
      dynamic gl,
      dynamic extensions,
      dynamic state,
      dynamic properties,
      dynamic capabilities,
      Function paramThreeToGL,
      dynamic info);
  external void setTexture2D(dynamic texture, num slot);
  external void setTextureCube(dynamic texture, num slot);
  external void setTextureCubeDynamic(dynamic texture, num slot);
  external void setupRenderTarget(dynamic renderTarget);
  external void updateRenderTargetMipmap(dynamic renderTarget);
}

@JS("THREE.WebGLUniforms")
class WebGLUniforms {
  // @Ignore
  WebGLUniforms.fakeConstructor$();
  external factory WebGLUniforms(
      dynamic gl, WebGLProgram program, WebGLRenderer renderer);
  external WebGLRenderer get renderer;
  external set renderer(WebGLRenderer v);
  external void setValue(dynamic gl, dynamic value, [dynamic renderer]);
  external void JS$set(dynamic gl, dynamic object, String name);
  external void setOptional(dynamic gl, dynamic object, String name);
  external static void upload(
      dynamic gl, dynamic seq, List<dynamic> values, dynamic renderer);
  external static List<dynamic> seqWithValue(dynamic seq, List<dynamic> values);
  external static List<dynamic> splitDynamic(dynamic seq, List<dynamic> values);
  external static List<dynamic> evalDynamic(
      dynamic seq, List<dynamic> values, dynamic object, dynamic camera);
}

@JS("THREE.WebGLProperties")
class WebGLProperties {
  // @Ignore
  WebGLProperties.fakeConstructor$();
  external factory WebGLProperties();
  external dynamic JS$get(dynamic object);
  external void delete(dynamic object);
  external void clear();
}

@JS("THREE.WebGLShader")
class WebGLShader {
  // @Ignore
  WebGLShader.fakeConstructor$();
  external factory WebGLShader(dynamic gl, String type, String string);
}

@JS("THREE.WebGLShadowMap")
class WebGLShadowMap {
  // @Ignore
  WebGLShadowMap.fakeConstructor$();
  external factory WebGLShadowMap(
      Renderer JS$_renderer,
      List<dynamic> JS$_lights,
      List<dynamic> JS$_objects,
      dynamic capabilities);
  external bool get enabled;
  external set enabled(bool v);
  external bool get autoUpdate;
  external set autoUpdate(bool v);
  external bool get needsUpdate;
  external set needsUpdate(bool v);
  external num /*enum ShadowMapType*/ get type;
  external set type(num /*enum ShadowMapType*/ v);
  external bool get renderReverseSided;
  external set renderReverseSided(bool v);
  external bool get renderSingleSided;
  external set renderSingleSided(bool v);
  external void render(Scene scene, Camera camera);

  /// deprecated
  external dynamic get cullFace;
  external set cullFace(dynamic v);
}

@JS("THREE.WebGLState")
class WebGLState {
  // @Ignore
  WebGLState.fakeConstructor$();
  external factory WebGLState(
      dynamic gl, dynamic extensions, Function paramThreeToGL);
  external dynamic
      /*{
            color: WebGLColorBuffer,
            depth: WebGLDepthBuffer,
            stencil: WebGLStencilBuffer,
        }*/
      get buffers;
  external set buffers(
      dynamic /*{
            color: WebGLColorBuffer,
            depth: WebGLDepthBuffer,
            stencil: WebGLStencilBuffer,
        }*/
      v);
  external void init();
  external void initAttributes();
  external void enableAttribute(String attribute);
  external void enableAttributeAndDivisor(
      String attribute, dynamic meshPerAttribute, dynamic extension);
  external void disableUnusedAttributes();
  external void enable(String id);
  external void disable(String id);
  external List<dynamic> getCompressedTextureFormats();
  external void setBlending(
      num blending,
      num blendEquation,
      num blendSrc,
      num blendDst,
      num blendEquationAlpha,
      num blendSrcAlpha,
      num blendDstAlpha);
  external void setColorWrite(num colorWrite);
  external void setDepthTest(num depthTest);
  external void setDepthWrite(num depthWrite);
  external void setDepthFunc(Function depthFunc);
  external void setStencilTest(bool stencilTest);
  external void setStencilWrite(dynamic stencilWrite);
  external void setStencilFunc(
      Function stencilFunc, dynamic stencilRef, num stencilMask);
  external void setStencilOp(
      dynamic stencilFail, dynamic stencilZFail, dynamic stencilZPass);
  external void setFlipSided(num flipSided);
  external void setCullFace(num /*enum CullFace*/ cullFace);
  external void setLineWidth(num width);
  external void setPolygonOffset(num polygonoffset, num factor, num units);
  external void setScissorTest(bool scissorTest);
  external bool getScissorTest();
  external void activeTexture(dynamic webglSlot);
  external void bindTexture(dynamic webglType, dynamic webglTexture);
  external void compressedTexImage2D();
  external void texImage2D();
  external void clearColor(num r, num g, num b, num a);
  external void clearDepth(num depth);
  external void clearStencil(dynamic stencil);
  external void scissor(dynamic scissor);
  external void viewport(dynamic viewport);
  external void reset();
}

@JS("THREE.WebGLColorBuffer")
class WebGLColorBuffer {
  // @Ignore
  WebGLColorBuffer.fakeConstructor$();
  external factory WebGLColorBuffer(dynamic gl, dynamic state);
  external void setMask(num colorMask);
  external void setLocked(bool lock);
  external void setClear(num r, num g, num b, num a);
  external void reset();
}

@JS("THREE.WebGLDepthBuffer")
class WebGLDepthBuffer {
  // @Ignore
  WebGLDepthBuffer.fakeConstructor$();
  external factory WebGLDepthBuffer(dynamic gl, dynamic state);
  external void setTest(bool depthTest);
  external void sertMask(num depthMask);
  external void setFunc(Function depthFunc);
  external void setLocked(bool lock);
  external void setClear(dynamic depth);
  external void reset();
}

@JS("THREE.WebGLStencilBuffer")
class WebGLStencilBuffer {
  // @Ignore
  WebGLStencilBuffer.fakeConstructor$();
  external factory WebGLStencilBuffer(dynamic gl, dynamic state);
  external void setTest(bool stencilTest);
  external void sertMask(num stencilMask);
  external void setFunc(
      Function stencilFunc, dynamic stencilRef, num stencilMask);
  external void setOp(
      dynamic stencilFail, dynamic stencilZFail, dynamic stencilZPass);
  external void setLocked(bool lock);
  external void setClear(dynamic stencil);
  external void reset();
}

/// Renderers / WebGL / Plugins /////////////////////////////////////////////////////////////////////
@JS("THREE.LensFlarePlugin")
class LensFlarePlugin {
  // @Ignore
  LensFlarePlugin.fakeConstructor$();
  external factory LensFlarePlugin(
      WebGLRenderer renderer, List<dynamic> flares);
  external void render(
      Scene scene, Camera camera, num viewportWidth, num viewportHeight);
}

@JS("THREE.SpritePlugin")
class SpritePlugin {
  // @Ignore
  SpritePlugin.fakeConstructor$();
  external factory SpritePlugin(WebGLRenderer renderer, List<dynamic> sprites);
  external void render(
      Scene scene, Camera camera, num viewportWidth, num viewportHeight);
}

/// Scenes /////////////////////////////////////////////////////////////////////
/// Scenes allow you to set up what and where is to be rendered by three.js. This is where you place objects, lights and cameras.
@JS("THREE.Scene")
class Scene extends Object3D {
  // @Ignore
  Scene.fakeConstructor$() : super.fakeConstructor$();
  external factory Scene();

  /// A fog instance defining the type of fog that affects everything rendered in the scene. Default is null.
  external IFog get fog;
  external set fog(IFog v);

  /// If not null, it will force everything in the scene to be rendered with that material. Default is null.
  external Material get overrideMaterial;
  external set overrideMaterial(Material v);
  external bool get autoUpdate;
  external set autoUpdate(bool v);
  external dynamic get background;
  external set background(dynamic v);
  external Scene copy(Scene source, [bool recursive]);
  external dynamic toJSON([dynamic meta]);
}

@anonymous
@JS()
abstract class IFog {
  external String get name;
  external set name(String v);
  external Color get color;
  external set color(Color v);
  external IFog clone();
  external dynamic toJSON();
}

/// This class contains the parameters that define linear fog, i.e., that grows linearly denser with the distance.
@JS("THREE.Fog")
class Fog implements IFog {
  // @Ignore
  Fog.fakeConstructor$();
  external factory Fog(num hex, [num near, num far]);
  external String get name;
  external set name(String v);

  /// Fog color.
  external Color get color;
  external set color(Color v);

  /// The minimum distance to start applying fog. Objects that are less than 'near' units from the active camera won't be affected by fog.
  external num get near;
  external set near(num v);

  /// The maximum distance at which fog stops being calculated and applied. Objects that are more than 'far' units away from the active camera won't be affected by fog.
  /// Default is 1000.
  external num get far;
  external set far(num v);
  external Fog clone();
  external dynamic toJSON();
}

/// This class contains the parameters that define linear fog, i.e., that grows exponentially denser with the distance.
@JS("THREE.FogExp2")
class FogExp2 implements IFog {
  // @Ignore
  FogExp2.fakeConstructor$();
  external factory FogExp2(dynamic /*num|String*/ hex, [num density]);
  external String get name;
  external set name(String v);
  external Color get color;
  external set color(Color v);

  /// Defines how fast the fog will grow dense.
  /// Default is 0.00025.
  external num get density;
  external set density(num v);
  external FogExp2 clone();
  external dynamic toJSON();
}

/// Textures /////////////////////////////////////////////////////////////////////
@JS("THREE.TextureIdCount")
external num get TextureIdCount;
@JS("THREE.TextureIdCount")
external set TextureIdCount(num v);

@JS("THREE.Texture")
class Texture extends EventDispatcher {
  // @Ignore
  Texture.fakeConstructor$() : super.fakeConstructor$();
  external factory Texture(
      dynamic /*ImageElement|CanvasElement|VideoElement*/ image,
      [num /*enum Mapping*/ mapping,
      num /*enum Wrapping*/ wrapS,
      num /*enum Wrapping*/ wrapT,
      num /*enum TextureFilter*/ magFilter,
      num /*enum TextureFilter*/ minFilter,
      num /*enum PixelFormat*/ format,
      num /*enum TextureDataType*/ type,
      num anisotropy,
      num /*enum TextureEncoding*/ encoding]);
  external num get id;
  external set id(num v);
  external String get uuid;
  external set uuid(String v);
  external String get name;
  external set name(String v);
  external String get sourceFile;
  external set sourceFile(String v);
  external dynamic get image;
  external set image(dynamic v);
  external List<ImageData> get mipmaps;
  external set mipmaps(List<ImageData> v);
  external num /*enum Mapping*/ get mapping;
  external set mapping(num /*enum Mapping*/ v);
  external num /*enum Wrapping*/ get wrapS;
  external set wrapS(num /*enum Wrapping*/ v);
  external num /*enum Wrapping*/ get wrapT;
  external set wrapT(num /*enum Wrapping*/ v);
  external num /*enum TextureFilter*/ get magFilter;
  external set magFilter(num /*enum TextureFilter*/ v);
  external num /*enum TextureFilter*/ get minFilter;
  external set minFilter(num /*enum TextureFilter*/ v);
  external num get anisotropy;
  external set anisotropy(num v);
  external num /*enum PixelFormat*/ get format;
  external set format(num /*enum PixelFormat*/ v);
  external num /*enum TextureDataType*/ get type;
  external set type(num /*enum TextureDataType*/ v);
  external Vector2 get offset;
  external set offset(Vector2 v);
  external Vector2 get repeat;
  external set repeat(Vector2 v);
  external bool get generateMipmaps;
  external set generateMipmaps(bool v);
  external bool get premultiplyAlpha;
  external set premultiplyAlpha(bool v);
  external bool get flipY;
  external set flipY(bool v);
  external num get unpackAlignment;
  external set unpackAlignment(num v);
  external num /*enum TextureEncoding*/ get encoding;
  external set encoding(num /*enum TextureEncoding*/ v);
  external num get version;
  external set version(num v);
  external bool get needsUpdate;
  external set needsUpdate(bool v);
  external VoidFunc0 get onUpdate;
  external set onUpdate(VoidFunc0 v);
  external static dynamic get DEFAULT_IMAGE;
  external static set DEFAULT_IMAGE(dynamic v);
  external static dynamic get DEFAULT_MAPPING;
  external static set DEFAULT_MAPPING(dynamic v);
  external Texture clone();
  external Texture copy(Texture source);
  external dynamic toJSON(dynamic meta);
  external void dispose();
  external void transformUv(Vector uv);
}

@JS("THREE.DepthTexture")
class DepthTexture extends Texture {
  // @Ignore
  DepthTexture.fakeConstructor$() : super.fakeConstructor$();
  external factory DepthTexture(num width, num heighht,
      [num /*enum TextureDataType*/ type,
      num /*enum Mapping*/ mapping,
      num /*enum Wrapping*/ wrapS,
      num /*enum Wrapping*/ wrapT,
      num /*enum TextureFilter*/ magFilter,
      num /*enum TextureFilter*/ minFilter,
      num anisotropy]);
  external dynamic /*{ width: number, height: number }*/ get image;
  external set image(dynamic /*{ width: number, height: number }*/ v);
}

@JS("THREE.CanvasTexture")
class CanvasTexture extends Texture {
  // @Ignore
  CanvasTexture.fakeConstructor$() : super.fakeConstructor$();
  external factory CanvasTexture(
      dynamic /*ImageElement|CanvasElement|VideoElement*/ canvas,
      [num /*enum Mapping*/ mapping,
      num /*enum Wrapping*/ wrapS,
      num /*enum Wrapping*/ wrapT,
      num /*enum TextureFilter*/ magFilter,
      num /*enum TextureFilter*/ minFilter,
      num /*enum PixelFormat*/ format,
      num /*enum TextureDataType*/ type,
      num anisotropy]);
  external CanvasTexture clone();
  external CanvasTexture copy(CanvasTexture source);
}

@JS("THREE.CubeTexture")
class CubeTexture extends Texture {
  // @Ignore
  CubeTexture.fakeConstructor$() : super.fakeConstructor$();
  external factory CubeTexture(
      [List<dynamic> images,
      num /*enum Mapping*/ mapping,
      num /*enum Wrapping*/ wrapS,
      num /*enum Wrapping*/ wrapT,
      num /*enum TextureFilter*/ magFilter,
      num /*enum TextureFilter*/ minFilter,
      num /*enum PixelFormat*/ format,
      num /*enum TextureDataType*/ type,
      num anisotropy,
      num /*enum TextureEncoding*/ encoding]);
  external dynamic get images;
  external set images(dynamic v);
  external CubeTexture copy(CubeTexture source);
}

@JS("THREE.CompressedTexture")
class CompressedTexture extends Texture {
  // @Ignore
  CompressedTexture.fakeConstructor$() : super.fakeConstructor$();
  external factory CompressedTexture(
      List<ImageData> mipmaps, num width, num height,
      [num /*enum PixelFormat*/ format,
      num /*enum TextureDataType*/ type,
      num /*enum Mapping*/ mapping,
      num /*enum Wrapping*/ wrapS,
      num /*enum Wrapping*/ wrapT,
      num /*enum TextureFilter*/ magFilter,
      num /*enum TextureFilter*/ minFilter,
      num anisotropy,
      num /*enum TextureEncoding*/ encoding]);
  external dynamic /*{ width: number; height: number; }*/ get image;
  external set image(dynamic /*{ width: number; height: number; }*/ v);
  external CompressedTexture clone();
  external CompressedTexture copy(CompressedTexture source);
}

@JS("THREE.DataTexture")
class DataTexture extends Texture {
  // @Ignore
  DataTexture.fakeConstructor$() : super.fakeConstructor$();
  external factory DataTexture(
      dynamic /*ByteBuffer|Int8List|Uint8List|Uint8ClampedList|Int16List|Uint16List|Int32List|Uint32List|Float32List|Float64List*/ data,
      num width,
      num height,
      num /*enum PixelFormat*/ format,
      num /*enum TextureDataType*/ type,
      num /*enum Mapping*/ mapping,
      num /*enum Wrapping*/ wrapS,
      num /*enum Wrapping*/ wrapT,
      num /*enum TextureFilter*/ magFilter,
      num /*enum TextureFilter*/ minFilter,
      [num anisotropy,
      num /*enum TextureEncoding*/ encoding]);
  external dynamic /*{ data: ImageData; width: number; height: number; }*/ get image;
  external set image(
      dynamic /*{ data: ImageData; width: number; height: number; }*/ v);
  external DataTexture clone();
  external DataTexture copy(DataTexture source);
}

@JS("THREE.VideoTexture")
class VideoTexture extends Texture {
  // @Ignore
  VideoTexture.fakeConstructor$() : super.fakeConstructor$();
  external factory VideoTexture(VideoElement video,
      [num /*enum Mapping*/ mapping,
      num /*enum Wrapping*/ wrapS,
      num /*enum Wrapping*/ wrapT,
      num /*enum TextureFilter*/ magFilter,
      num /*enum TextureFilter*/ minFilter,
      num /*enum PixelFormat*/ format,
      num /*enum TextureDataType*/ type,
      num anisotropy]);
  external VideoTexture clone();
  external VideoTexture copy(VideoTexture source);
}

/// Extras /////////////////////////////////////////////////////////////////////

// Module CurveUtils
@JS("THREE.CurveUtils.tangentQuadraticBezier")
external num tangentQuadraticBezier(num t, num p0, num p1, num p2);
@JS("THREE.CurveUtils.tangentCubicBezier")
external num tangentCubicBezier(num t, num p0, num p1, num p2, num p3);
@JS("THREE.CurveUtils.tangentSpline")
external num tangentSpline(num t, num p0, num p1, num p2, num p3);
@JS("THREE.CurveUtils.interpolate")
external num interpolate(num p0, num p1, num p2, num p3, num t);
// End module CurveUtils

// Module ImageUtils
@JS("THREE.ImageUtils.crossOrigin")
external String get crossOrigin;
@JS("THREE.ImageUtils.crossOrigin")
external set crossOrigin(String v);
@JS("THREE.ImageUtils.loadTexture")
external Texture loadTexture(String url,
    [num /*enum Mapping*/ mapping,
    void onLoad(Texture texture),
    void onError(String message)]);
@JS("THREE.ImageUtils.loadTextureCube")
external Texture loadTextureCube(List<String> array,
    [num /*enum Mapping*/ mapping,
    void onLoad(Texture texture),
    void onError(String message)]);
// End module ImageUtils

// Module SceneUtils
@JS("THREE.SceneUtils.createMultiMaterialObject")
external Object3D createMultiMaterialObject(
    Geometry geometry, List<Material> materials);
@JS("THREE.SceneUtils.detach")
external void detach(Object3D child, Object3D parent, Scene scene);
@JS("THREE.SceneUtils.attach")
external void attach(Object3D child, Scene scene, Object3D parent);
// End module SceneUtils

// Module ShapeUtils
@JS("THREE.ShapeUtils.area")
external num area(List<num> contour);
@JS("THREE.ShapeUtils.triangulate")
external List<num> triangulate(List<num> contour, bool indices);
@JS("THREE.ShapeUtils.triangulateShape")
external List<num> triangulateShape(List<num> contour, List<dynamic> holes);
@JS("THREE.ShapeUtils.isClockWise")
external bool isClockWise(List<num> pts);
@JS("THREE.ShapeUtils.b2")
external num b2(num t, num p0, num p1, num p2);
@JS("THREE.ShapeUtils.b3")
external num b3(num t, num p0, num p1, num p2, num p3);

// End module ShapeUtils
/// Extras / Audio /////////////////////////////////////////////////////////////////////
@JS("THREE.Audio")
class Audio extends Object3D {
  // @Ignore
  Audio.fakeConstructor$() : super.fakeConstructor$();
  external factory Audio(AudioListener listener);
  external String get type;
  external set type(String v);
  external AudioContext get context;
  external set context(AudioContext v);
  external AudioBufferSourceNode get source;
  external set source(AudioBufferSourceNode v);
  external GainNode get gain;
  external set gain(GainNode v);
  external bool get autoplay;
  external set autoplay(bool v);
  external num get startTime;
  external set startTime(num v);
  external num get playbackRate;
  external set playbackRate(num v);
  external bool get hasPlaybackControl;
  external set hasPlaybackControl(bool v);
  external bool get isPlaying;
  external set isPlaying(bool v);
  external String get sourceType;
  external set sourceType(String v);
  external List<dynamic> get filters;
  external set filters(List<dynamic> v);
  external GainNode getOutput();
  external Audio setNodeSource(AudioBufferSourceNode audioNode);
  external Audio setBuffer(AudioBuffer audioBuffer);
  external Audio play();
  external Audio pause();
  external Audio stop();
  external Audio connect();
  external Audio disconnect();
  external List<dynamic> getFilters();
  /*external Audio setFilter(List<dynamic> value);*/
  /*external Audio setFilter(dynamic filter);*/
  external Audio setFilter(dynamic /*List<dynamic>|dynamic*/ value_filter);
  external dynamic getFilter();
  external Audio setPlaybackRate(num value);
  external num getPlaybackRate();
  external void onEnded();
  external bool getLoop();
  external void setLoop(bool value);
  external num getVolume();
  external Audio setVolume(num value);
  external Audio load(String file);
}

@JS("THREE.AudioAnalyser")
class AudioAnalyser {
  // @Ignore
  AudioAnalyser.fakeConstructor$();
  external factory AudioAnalyser(dynamic audio, num fftSize);
  external dynamic get analyser;
  external set analyser(dynamic v);
  external Uint8List get data;
  external set data(Uint8List v);
  external Uint8List getFrequencyData();
  external num getAverageFrequency();

  /// deprecated
  external dynamic getData(dynamic file);
}

@JS("THREE.AudioContext")
external AudioContext get AudioContext;

@JS("THREE.AudioBuffer")
class AudioBuffer {
  // @Ignore
  AudioBuffer.fakeConstructor$();
  external factory AudioBuffer(dynamic context);
  external dynamic get context;
  external set context(dynamic v);
  external bool get ready;
  external set ready(bool v);
  external List<Function> get readyCallbacks;
  external set readyCallbacks(List<Function> v);
  external AudioBuffer load(String file);
  external void onReady(Function callback);
}

@JS("THREE.PositionalAudio")
class PositionalAudio extends Audio {
  // @Ignore
  PositionalAudio.fakeConstructor$() : super.fakeConstructor$();
  external factory PositionalAudio(AudioListener listener);
  external PannerNode get panner;
  external set panner(PannerNode v);
  external void setRefDistance(num value);
  external num getRefDistance();
  external void setRolloffFactor(num value);
  external num getRolloffFactor();
  external void setDistanceModel(num value);
  external num getDistanceModel();
  external void setMaxDistance(num value);
  external num getMaxDistance();
}

@JS("THREE.AudioListener")
class AudioListener extends Object3D {
  // @Ignore
  AudioListener.fakeConstructor$() : super.fakeConstructor$();
  external factory AudioListener();
  external String get type;
  external set type(String v);
  external AudioContext get context;
  external set context(AudioContext v);
  external GainNode get gain;
  external set gain(GainNode v);
  external GainNode getInput();
  external void removeFilter();
  external void setFilter(dynamic value);
  external dynamic getFilter();
  external void setMasterVolume(num value);
  external num getMasterVolume();
}

/// Extras / Core /////////////////////////////////////////////////////////////////////
/// An extensible curve object which contains methods for interpolation
/// class Curve&lt;T extends Vector&gt;
@JS("THREE.Curve")
class Curve<T extends Vector> {
  // @Ignore
  Curve.fakeConstructor$();

  /// Returns a vector for point t of the curve where t is between 0 and 1
  /// getPoint(t: number): T;
  external T getPoint(num t);

  /// Returns a vector for point at relative position in curve according to arc length
  /// getPointAt(u: number): T;
  external T getPointAt(num u);

  /// Get sequence of points using getPoint( t )
  /// getPoints(divisions?: number): T[];
  external List<T> getPoints([num divisions]);

  /// Get sequence of equi-spaced points using getPointAt( u )
  /// getSpacedPoints(divisions?: number): T[];
  external List<T> getSpacedPoints([num divisions]);

  /// Get total curve arc length
  external num getLength();

  /// Get list of cumulative segment lengths
  external List<num> getLengths([num divisions]);

  /// Update the cumlative segment distance cache
  external void updateArcLengths();

  /// Given u ( 0 .. 1 ), get a t to find p. This gives you points which are equi distance
  external num getUtoTmapping(num u, num distance);

  /// Returns a unit vector tangent at t. If the subclassed curve do not implement its tangent derivation, 2 points a small delta apart will be used to find its gradient which seems to give a reasonable approximation
  /// getTangent(t: number): T;
  external T getTangent(num t);

  /// Returns tangent at equidistance point u on the curve
  /// getTangentAt(u: number): T;
  external T getTangentAt(num u);
  external static Function create(
      Function constructorFunc, Function getPointFunc);
}

@JS("THREE.CurvePath")
class CurvePath<T extends Vector> extends Curve<T> {
  // @Ignore
  CurvePath.fakeConstructor$() : super.fakeConstructor$();
  external factory CurvePath();
  external List<Curve<T>> get curves;
  external set curves(List<Curve<T>> v);
  external bool get autoClose;
  external set autoClose(bool v);
  external void add(Curve<T> curve);
  external bool checkConnection();
  external void closePath();
  external T getPoint(num t);
  external num getLength();
  external void updateArcLengths();
  external List<num> getCurveLengths();
  external List<T> getSpacedPoints([num divisions]);
  external List<T> getPoints([num divisions]);
  external Geometry createPointsGeometry(num divisions);
  external Geometry createSpacedPointsGeometry(num divisions);
  external Geometry createGeometry(List<T> points);
}

@JS("THREE.PathActions")
class PathActions {
  external static num get MOVE_TO;
  external static num get LINE_TO;
  external static num get QUADRATIC_CURVE_TO;
  external static num get BEZIER_CURVE_TO;
  external static num get CSPLINE_THRU;
  external static num get ARC;
  external static num get ELLIPSE;
}

@anonymous
@JS()
abstract class PathAction {
  external num /*enum PathActions*/ get action;
  external set action(num /*enum PathActions*/ v);
  external dynamic get args;
  external set args(dynamic v);
  external factory PathAction({num /*enum PathActions*/ action, dynamic args});
}

/// a 2d path representation, comprising of points, lines, and cubes, similar to the html5 2d canvas api. It extends CurvePath.
@JS("THREE.Path")
class Path extends CurvePath<Vector2> {
  // @Ignore
  Path.fakeConstructor$() : super.fakeConstructor$();
  external factory Path([List<Vector2> points]);
  external Vector2 get currentPoint;
  external set currentPoint(Vector2 v);
  external void fromPoints(List<Vector2> vectors);
  external void moveTo(num x, num y);
  external void lineTo(num x, num y);
  external void quadraticCurveTo(num aCPx, num aCPy, num aX, num aY);
  external void bezierCurveTo(
      num aCP1x, num aCP1y, num aCP2x, num aCP2y, num aX, num aY);
  external void splineThru(List<Vector2> pts);
  external void arc(num aX, num aY, num aRadius, num aStartAngle, num aEndAngle,
      bool aClockwise);
  external void absarc(num aX, num aY, num aRadius, num aStartAngle,
      num aEndAngle, bool aClockwise);
  external void ellipse(num aX, num aY, num xRadius, num yRadius,
      num aStartAngle, num aEndAngle, bool aClockwise, num aRotation);
  external void absellipse(num aX, num aY, num xRadius, num yRadius,
      num aStartAngle, num aEndAngle, bool aClockwise, num aRotation);
}

@JS("THREE.ShapePath")
class ShapePath {
  // @Ignore
  ShapePath.fakeConstructor$();
  external factory ShapePath();
  external List<dynamic> get subPaths;
  external set subPaths(List<dynamic> v);
  external dynamic get currentPath;
  external set currentPath(dynamic v);
  external void moveTo(num x, num y);
  external void lineTo(num x, num y);
  external void quadraticCurveTo(num aCPx, num aCPy, num aX, num aY);
  external void bezierCurveTo(
      num aCP1x, num aCP1y, num aCP2x, num aCP2y, num aX, num aY);
  external void splineThru(List<Vector2> pts);
  external List<Shape> toShapes(bool isCCW, dynamic noHoles);
}

/// Defines a 2d shape plane using paths.
@JS("THREE.Shape")
class Shape extends Path {
  // @Ignore
  Shape.fakeConstructor$() : super.fakeConstructor$();
  external factory Shape([List<Vector2> points]);
  external List<Path> get holes;
  external set holes(List<Path> v);
  external ExtrudeGeometry extrude([dynamic options]);
  external ShapeGeometry makeGeometry([dynamic options]);
  external List<List<Vector2>> getPointsHoles(num divisions);
  external dynamic
      /*{
            shape: Vector2[];
            holes: Vector2[][];
        }*/
      extractAllPoints(num divisions);
  external List<Vector2> extractPoints(num divisions);
}

/// Extras / Curves /////////////////////////////////////////////////////////////////////
@JS("THREE.CatmullRomCurve3")
class CatmullRomCurve3 extends Curve<Vector3> {
  // @Ignore
  CatmullRomCurve3.fakeConstructor$() : super.fakeConstructor$();
  external factory CatmullRomCurve3([List<Vector3> points]);
  external List<Vector3> get points;
  external set points(List<Vector3> v);
  external Vector3 getPoint(num t);
}

@JS("THREE.ClosedSplineCurve3")
class ClosedSplineCurve3 extends CatmullRomCurve3 {
  // @Ignore
  ClosedSplineCurve3.fakeConstructor$() : super.fakeConstructor$();
}

@JS("THREE.SplineCurve3")
class SplineCurve3 extends CatmullRomCurve3 {
  // @Ignore
  SplineCurve3.fakeConstructor$() : super.fakeConstructor$();
}

@JS("THREE.CubicBezierCurve")
class CubicBezierCurve extends Curve<Vector2> {
  // @Ignore
  CubicBezierCurve.fakeConstructor$() : super.fakeConstructor$();
  external factory CubicBezierCurve(
      Vector2 v0, Vector2 v1, Vector2 v2, Vector2 v3);
  external Vector2 get v0;
  external set v0(Vector2 v);
  external Vector2 get v1;
  external set v1(Vector2 v);
  external Vector2 get v2;
  external set v2(Vector2 v);
  external Vector2 get v3;
  external set v3(Vector2 v);
}

@JS("THREE.CubicBezierCurve3")
class CubicBezierCurve3 extends Curve<Vector3> {
  // @Ignore
  CubicBezierCurve3.fakeConstructor$() : super.fakeConstructor$();
  external factory CubicBezierCurve3(
      Vector3 v0, Vector3 v1, Vector3 v2, Vector3 v3);
  external Vector3 get v0;
  external set v0(Vector3 v);
  external Vector3 get v1;
  external set v1(Vector3 v);
  external Vector3 get v2;
  external set v2(Vector3 v);
  external Vector3 get v3;
  external set v3(Vector3 v);
  external Vector3 getPoint(num t);
}

@JS("THREE.EllipseCurve")
class EllipseCurve extends Curve<Vector2> {
  // @Ignore
  EllipseCurve.fakeConstructor$() : super.fakeConstructor$();
  external factory EllipseCurve(num aX, num aY, num xRadius, num yRadius,
      num aStartAngle, num aEndAngle, bool aClockwise, num aRotation);
  external num get aX;
  external set aX(num v);
  external num get aY;
  external set aY(num v);
  external num get xRadius;
  external set xRadius(num v);
  external num get yRadius;
  external set yRadius(num v);
  external num get aStartAngle;
  external set aStartAngle(num v);
  external num get aEndAngle;
  external set aEndAngle(num v);
  external bool get aClockwise;
  external set aClockwise(bool v);
  external num get aRotation;
  external set aRotation(num v);
}

@JS("THREE.ArcCurve")
class ArcCurve extends EllipseCurve {
  // @Ignore
  ArcCurve.fakeConstructor$() : super.fakeConstructor$();
  external factory ArcCurve(num aX, num aY, num aRadius, num aStartAngle,
      num aEndAngle, bool aClockwise);
}

@JS("THREE.LineCurve")
class LineCurve extends Curve<Vector2> {
  // @Ignore
  LineCurve.fakeConstructor$() : super.fakeConstructor$();
  external factory LineCurve(Vector2 v1, Vector2 v2);
  external Vector2 get v1;
  external set v1(Vector2 v);
  external Vector2 get v2;
  external set v2(Vector2 v);
}

@JS("THREE.LineCurve3")
class LineCurve3 extends Curve<Vector3> {
  // @Ignore
  LineCurve3.fakeConstructor$() : super.fakeConstructor$();
  external factory LineCurve3(Vector3 v1, Vector3 v2);
  external Vector3 get v1;
  external set v1(Vector3 v);
  external Vector3 get v2;
  external set v2(Vector3 v);
  external Vector3 getPoint(num t);
}

@JS("THREE.QuadraticBezierCurve")
class QuadraticBezierCurve extends Curve<Vector2> {
  // @Ignore
  QuadraticBezierCurve.fakeConstructor$() : super.fakeConstructor$();
  external factory QuadraticBezierCurve(Vector2 v0, Vector2 v1, Vector2 v2);
  external Vector2 get v0;
  external set v0(Vector2 v);
  external Vector2 get v1;
  external set v1(Vector2 v);
  external Vector2 get v2;
  external set v2(Vector2 v);
}

@JS("THREE.QuadraticBezierCurve3")
class QuadraticBezierCurve3 extends Curve<Vector3> {
  // @Ignore
  QuadraticBezierCurve3.fakeConstructor$() : super.fakeConstructor$();
  external factory QuadraticBezierCurve3(Vector3 v0, Vector3 v1, Vector3 v2);
  external Vector3 get v0;
  external set v0(Vector3 v);
  external Vector3 get v1;
  external set v1(Vector3 v);
  external Vector3 get v2;
  external set v2(Vector3 v);
  external Vector3 getPoint(num t);
}

@JS("THREE.SplineCurve")
class SplineCurve extends Curve<Vector2> {
  // @Ignore
  SplineCurve.fakeConstructor$() : super.fakeConstructor$();
  external factory SplineCurve([List<Vector2> points]);
  external List<Vector2> get points;
  external set points(List<Vector2> v);
}

/// Extras / Geometries /////////////////////////////////////////////////////////////////////
@JS("THREE.BoxBufferGeometry")
class BoxBufferGeometry extends BufferGeometry {
  // @Ignore
  BoxBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory BoxBufferGeometry(num width, num height, num depth,
      [num widthSegments, num heightSegments, num depthSegments]);
  external dynamic
      /*{
            width: number;
            height: number;
            depth: number;
            widthSegments: number;
            heightSegments: number;
            depthSegments: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            width: number;
            height: number;
            depth: number;
            widthSegments: number;
            heightSegments: number;
            depthSegments: number;
        }*/
      v);
}

/// BoxGeometry is the quadrilateral primitive geometry class. It is typically used for creating a cube or irregular quadrilateral of the dimensions provided within the (optional) 'width', 'height', & 'depth' constructor arguments.
@JS("THREE.BoxGeometry")
class BoxGeometry extends Geometry {
  // @Ignore
  BoxGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory BoxGeometry(num width, num height, num depth,
      [num widthSegments, num heightSegments, num depthSegments]);
  external dynamic
      /*{
            width: number;
            height: number;
            depth: number;
            widthSegments: number;
            heightSegments: number;
            depthSegments: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            width: number;
            height: number;
            depth: number;
            widthSegments: number;
            heightSegments: number;
            depthSegments: number;
        }*/
      v);
  external BoxGeometry clone();
}

@JS("THREE.CubeGeometry")
class CubeGeometry extends BoxGeometry {
  // @Ignore
  CubeGeometry.fakeConstructor$() : super.fakeConstructor$();
}

@JS("THREE.CircleBufferGeometry")
class CircleBufferGeometry extends BufferGeometry {
  // @Ignore
  CircleBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory CircleBufferGeometry(
      [num radius, num segments, num thetaStart, num thetaLength]);
  external dynamic
      /*{
            radius: number;
            segments: number;
            thetaStart: number;
            thetaLength: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            radius: number;
            segments: number;
            thetaStart: number;
            thetaLength: number;
        }*/
      v);
}

@JS("THREE.CircleGeometry")
class CircleGeometry extends Geometry {
  // @Ignore
  CircleGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory CircleGeometry(
      [num radius, num segments, num thetaStart, num thetaLength]);
  external dynamic
      /*{
            radius: number;
            segments: number;
            thetaStart: number;
            thetaLength: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            radius: number;
            segments: number;
            thetaStart: number;
            thetaLength: number;
        }*/
      v);
}

@JS("THREE.CylinderBufferGeometry")
class CylinderBufferGeometry extends BufferGeometry {
  // @Ignore
  CylinderBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory CylinderBufferGeometry(
      [num radiusTop,
      num radiusBottom,
      num height,
      num radialSegments,
      num heightSegments,
      bool openEnded,
      num thetaStart,
      num thetaLength]);
  external dynamic
      /*{
            radiusTop: number;
            radiusBottom: number;
            height: number;
            radialSegments: number;
            heightSegments: number;
            openEnded: boolean;
            thetaStart: number;
            thetaLength: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            radiusTop: number;
            radiusBottom: number;
            height: number;
            radialSegments: number;
            heightSegments: number;
            openEnded: boolean;
            thetaStart: number;
            thetaLength: number;
        }*/
      v);
}

@JS("THREE.CylinderGeometry")
class CylinderGeometry extends Geometry {
  // @Ignore
  CylinderGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory CylinderGeometry(
      [num radiusTop,
      num radiusBottom,
      num height,
      num radiusSegments,
      num heightSegments,
      bool openEnded,
      num thetaStart,
      num thetaLength]);
  external dynamic
      /*{
            radiusTop: number;
            radiusBottom: number;
            height: number;
            radialSegments: number;
            heightSegments: number;
            openEnded: boolean;
            thetaStart: number;
            thetaLength: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            radiusTop: number;
            radiusBottom: number;
            height: number;
            radialSegments: number;
            heightSegments: number;
            openEnded: boolean;
            thetaStart: number;
            thetaLength: number;
        }*/
      v);
}

@JS("THREE.ConeBufferGeometry")
class ConeBufferGeometry extends BufferGeometry {
  // @Ignore
  ConeBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory ConeBufferGeometry(
      [num radius,
      num height,
      num radialSegment,
      num heightSegment,
      bool openEnded,
      num thetaStart,
      num thetaLength]);
}

@JS("THREE.ConeGeometry")
class ConeGeometry extends CylinderGeometry {
  // @Ignore
  ConeGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory ConeGeometry(
      [num radius,
      num height,
      num radialSegment,
      num heightSegment,
      bool openEnded,
      num thetaStart,
      num thetaLength]);
}

@JS("THREE.DodecahedronGeometry")
class DodecahedronGeometry extends Geometry {
  // @Ignore
  DodecahedronGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory DodecahedronGeometry(num radius, num detail);
  external dynamic
      /*{
            radius: number;
            detail: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            radius: number;
            detail: number;
        }*/
      v);
}

@JS("THREE.EdgesGeometry")
class EdgesGeometry extends BufferGeometry {
  // @Ignore
  EdgesGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory EdgesGeometry(BufferGeometry geometry, num thresholdAngle);
  external EdgesGeometry clone();
}

@JS("THREE.ExtrudeGeometry")
class ExtrudeGeometry extends Geometry {
  // @Ignore
  ExtrudeGeometry.fakeConstructor$() : super.fakeConstructor$();
  /*external factory ExtrudeGeometry([Shape shape, dynamic options]);*/
  /*external factory ExtrudeGeometry([List<Shape> shapes, dynamic options]);*/
  external factory ExtrudeGeometry(
      [dynamic /*Shape|List<Shape>*/ shape_shapes, dynamic options]);
  external static dynamic
      /*{
            generateTopUV(geometry: Geometry, indexA: number, indexB: number, indexC: number): Vector2[];
            generateSideWallUV(geometry: Geometry, indexA: number, indexB: number, indexC: number, indexD: number): Vector2[];
        }*/
      get WorldUVGenerator;
  external static set WorldUVGenerator(
      dynamic /*{
            generateTopUV(geometry: Geometry, indexA: number, indexB: number, indexC: number): Vector2[];
            generateSideWallUV(geometry: Geometry, indexA: number, indexB: number, indexC: number, indexD: number): Vector2[];
        }*/
      v);
  external void addShapeList(List<Shape> shapes, [dynamic options]);
  external void addShape(Shape shape, [dynamic options]);
}

@JS("THREE.IcosahedronGeometry")
class IcosahedronGeometry extends PolyhedronGeometry {
  // @Ignore
  IcosahedronGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory IcosahedronGeometry(num radius, num detail);
}

@JS("THREE.LatheBufferGeometry")
class LatheBufferGeometry extends BufferGeometry {
  // @Ignore
  LatheBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory LatheBufferGeometry(List<Vector3> points,
      [num segments, num phiStart, num phiLength]);
  external dynamic
      /*{
            points: Vector3[];
            segments: number;
            phiStart: number;
            phiLength: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            points: Vector3[];
            segments: number;
            phiStart: number;
            phiLength: number;
        }*/
      v);
}

@JS("THREE.LatheGeometry")
class LatheGeometry extends Geometry {
  // @Ignore
  LatheGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory LatheGeometry(List<Vector3> points,
      [num segments, num phiStart, num phiLength]);
  external dynamic
      /*{
            points: Vector3[];
            segments: number;
            phiStart: number;
            phiLength: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            points: Vector3[];
            segments: number;
            phiStart: number;
            phiLength: number;
        }*/
      v);
}

@JS("THREE.OctahedronGeometry")
class OctahedronGeometry extends PolyhedronGeometry {
  // @Ignore
  OctahedronGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory OctahedronGeometry(num radius, num detail);
}

@JS("THREE.ParametricGeometry")
class ParametricGeometry extends Geometry {
  // @Ignore
  ParametricGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory ParametricGeometry(
      Vector3 func(num u, num v), num slices, num stacks);
  external dynamic
      /*{
            func: (u: number, v: number) => Vector3;
            slices: number;
            stacks: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            func: (u: number, v: number) => Vector3;
            slices: number;
            stacks: number;
        }*/
      v);
}

@JS("THREE.PlaneBufferGeometry")
class PlaneBufferGeometry extends BufferGeometry {
  // @Ignore
  PlaneBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory PlaneBufferGeometry(num width, num height,
      [num widthSegments, num heightSegments]);
  external dynamic
      /*{
            width: number;
            height: number;
            widthSegments: number;
            heightSegments: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            width: number;
            height: number;
            widthSegments: number;
            heightSegments: number;
        }*/
      v);
}

@JS("THREE.PlaneGeometry")
class PlaneGeometry extends Geometry {
  // @Ignore
  PlaneGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory PlaneGeometry(num width, num height,
      [num widthSegments, num heightSegments]);
  external dynamic
      /*{
            width: number;
            height: number;
            widthSegments: number;
            heightSegments: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            width: number;
            height: number;
            widthSegments: number;
            heightSegments: number;
        }*/
      v);
}

@JS("THREE.PolyhedronGeometry")
class PolyhedronGeometry extends Geometry {
  // @Ignore
  PolyhedronGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory PolyhedronGeometry(List<Vector3> vertices, List<Face3> faces,
      [num radius, num detail]);
  external dynamic
      /*{
            vertices: Vector3[];
            faces: Face3[];
            radius: number;
            detail: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            vertices: Vector3[];
            faces: Face3[];
            radius: number;
            detail: number;
        }*/
      v);
  external Sphere get boundingSphere;
  external set boundingSphere(Sphere v);
}

@JS("THREE.RingBufferGeometry")
class RingBufferGeometry extends BufferGeometry {
  // @Ignore
  RingBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory RingBufferGeometry(
      [num innerRadius,
      num outerRadius,
      num thetaSegments,
      num phiSegments,
      num thetaStart,
      num thetaLength]);
  external dynamic
      /*{
            innerRadius: number;
            outerRadius: number;
            thetaSegments: number;
            phiSegments: number;
            thetaStart: number;
            thetaLength: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            innerRadius: number;
            outerRadius: number;
            thetaSegments: number;
            phiSegments: number;
            thetaStart: number;
            thetaLength: number;
        }*/
      v);
}

@JS("THREE.RingGeometry")
class RingGeometry extends Geometry {
  // @Ignore
  RingGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory RingGeometry(
      [num innerRadius,
      num outerRadius,
      num thetaSegments,
      num phiSegments,
      num thetaStart,
      num thetaLength]);
  external dynamic
      /*{
            innerRadius: number;
            outerRadius: number;
            thetaSegments: number;
            phiSegments: number;
            thetaStart: number;
            thetaLength: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            innerRadius: number;
            outerRadius: number;
            thetaSegments: number;
            phiSegments: number;
            thetaStart: number;
            thetaLength: number;
        }*/
      v);
}

@JS("THREE.ShapeGeometry")
class ShapeGeometry extends Geometry {
  // @Ignore
  ShapeGeometry.fakeConstructor$() : super.fakeConstructor$();
  /*external factory ShapeGeometry(Shape shape, [dynamic options]);*/
  /*external factory ShapeGeometry(List<Shape> shapes, [dynamic options]);*/
  external factory ShapeGeometry(dynamic /*Shape|List<Shape>*/ shape_shapes,
      [dynamic options]);
  external ShapeGeometry addShapeList(List<Shape> shapes, dynamic options);
  external void addShape(Shape shape, [dynamic options]);
}

@JS("THREE.SphereBufferGeometry")
class SphereBufferGeometry extends BufferGeometry {
  // @Ignore
  SphereBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory SphereBufferGeometry(num radius,
      [num widthSegments,
      num heightSegments,
      num phiStart,
      num phiLength,
      num thetaStart,
      num thetaLength]);
  external dynamic
      /*{
            radius: number;
            widthSegments: number;
            heightSegments: number;
            phiStart: number;
            phiLength: number;
            thetaStart: number;
            thetaLength: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            radius: number;
            widthSegments: number;
            heightSegments: number;
            phiStart: number;
            phiLength: number;
            thetaStart: number;
            thetaLength: number;
        }*/
      v);
}

/// A class for generating sphere geometries
@JS("THREE.SphereGeometry")
class SphereGeometry extends Geometry {
  // @Ignore
  SphereGeometry.fakeConstructor$() : super.fakeConstructor$();

  /// The geometry is created by sweeping and calculating vertexes around the Y axis (horizontal sweep) and the Z axis (vertical sweep). Thus, incomplete spheres (akin to 'sphere slices') can be created through the use of different values of phiStart, phiLength, thetaStart and thetaLength, in order to define the points in which we start (or end) calculating those vertices.
  external factory SphereGeometry(num radius,
      [num widthSegments,
      num heightSegments,
      num phiStart,
      num phiLength,
      num thetaStart,
      num thetaLength]);
  external dynamic
      /*{
            radius: number;
            widthSegments: number;
            heightSegments: number;
            phiStart: number;
            phiLength: number;
            thetaStart: number;
            thetaLength: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            radius: number;
            widthSegments: number;
            heightSegments: number;
            phiStart: number;
            phiLength: number;
            thetaStart: number;
            thetaLength: number;
        }*/
      v);
}

@JS("THREE.TetrahedronGeometry")
class TetrahedronGeometry extends PolyhedronGeometry {
  // @Ignore
  TetrahedronGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory TetrahedronGeometry([num radius, num detail]);
}

@anonymous
@JS()
abstract class TextGeometryParameters {
  external Font get font;
  external set font(Font v);
  external num get size;
  external set size(num v);
  external num get height;
  external set height(num v);
  external num get curveSegments;
  external set curveSegments(num v);
  external bool get bevelEnabled;
  external set bevelEnabled(bool v);
  external num get bevelThickness;
  external set bevelThickness(num v);
  external num get bevelSize;
  external set bevelSize(num v);
  external factory TextGeometryParameters(
      {Font font,
      num size,
      num height,
      num curveSegments,
      bool bevelEnabled,
      num bevelThickness,
      num bevelSize});
}

@JS("THREE.TextGeometry")
class TextGeometry extends ExtrudeGeometry {
  // @Ignore
  TextGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory TextGeometry(String text,
      [TextGeometryParameters parameters]);
  external dynamic
      /*{
            font: Font;
            size: number;
            height: number;
            curveSegments: number;
            bevelEnabled: boolean;
            bevelThickness: number;
            bevelSize: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            font: Font;
            size: number;
            height: number;
            curveSegments: number;
            bevelEnabled: boolean;
            bevelThickness: number;
            bevelSize: number;
        }*/
      v);
}

@JS("THREE.TorusBufferGeometry")
class TorusBufferGeometry extends BufferGeometry {
  // @Ignore
  TorusBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory TorusBufferGeometry(
      [num radius, num tube, num radialSegments, num tubularSegments, num arc]);
  external dynamic
      /*{
            radius: number;
            tube: number;
            radialSegments: number;
            tubularSegments: number;
            arc: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            radius: number;
            tube: number;
            radialSegments: number;
            tubularSegments: number;
            arc: number;
        }*/
      v);
}

@JS("THREE.TorusGeometry")
class TorusGeometry extends Geometry {
  // @Ignore
  TorusGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory TorusGeometry(
      [num radius, num tube, num radialSegments, num tubularSegments, num arc]);
  external dynamic
      /*{
            radius: number;
            tube: number;
            radialSegments: number;
            tubularSegments: number;
            arc: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            radius: number;
            tube: number;
            radialSegments: number;
            tubularSegments: number;
            arc: number;
        }*/
      v);
}

@JS("THREE.TorusKnotBufferGeometry")
class TorusKnotBufferGeometry extends BufferGeometry {
  // @Ignore
  TorusKnotBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory TorusKnotBufferGeometry(
      [num radius,
      num tube,
      num radialSegments,
      num tubularSegments,
      num p,
      num q,
      num heightScale]);
  external dynamic
      /*{
            radius: number;
            tube: number;
            radialSegments: number;
            tubularSegments: number;
            p: number;
            q: number;
            heightScale: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            radius: number;
            tube: number;
            radialSegments: number;
            tubularSegments: number;
            p: number;
            q: number;
            heightScale: number;
        }*/
      v);
}

@JS("THREE.TorusKnotGeometry")
class TorusKnotGeometry extends Geometry {
  // @Ignore
  TorusKnotGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory TorusKnotGeometry(
      [num radius,
      num tube,
      num radialSegments,
      num tubularSegments,
      num p,
      num q,
      num heightScale]);
  external dynamic
      /*{
            radius: number;
            tube: number;
            radialSegments: number;
            tubularSegments: number;
            p: number;
            q: number;
            heightScale: number;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            radius: number;
            tube: number;
            radialSegments: number;
            tubularSegments: number;
            p: number;
            q: number;
            heightScale: number;
        }*/
      v);
}

@JS("THREE.TubeGeometry")
class TubeGeometry extends Geometry {
  // @Ignore
  TubeGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory TubeGeometry(Path path,
      [num segments,
      num radius,
      num radiusSegments,
      bool closed,
      num taper(num u)]);
  external dynamic
      /*{
            path: Path;
            segments: number;
            radius: number;
            radialSegments: number;
            closed: boolean;
            taper: (u: number) => number; // NoTaper or SinusoidalTaper;
        }*/
      get parameters;
  external set parameters(
      dynamic /*{
            path: Path;
            segments: number;
            radius: number;
            radialSegments: number;
            closed: boolean;
            taper: (u: number) => number; // NoTaper or SinusoidalTaper;
        }*/
      v);
  external List<Vector3> get tangents;
  external set tangents(List<Vector3> v);
  external List<Vector3> get normals;
  external set normals(List<Vector3> v);
  external List<Vector3> get binormals;
  external set binormals(List<Vector3> v);
  external static num NoTaper([num u]);
  external static num SinusoidalTaper(num u);
  external static void FrenetFrames(Path path, num segments, bool closed);
}

@JS("THREE.WireframeGeometry")
class WireframeGeometry extends BufferGeometry {
  // @Ignore
  WireframeGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory WireframeGeometry(
      dynamic /*Geometry|BufferGeometry*/ geometry);
}

/// Extras / Helpers /////////////////////////////////////////////////////////////////////
@JS("THREE.ArrowHelper")
class ArrowHelper extends Object3D {
  // @Ignore
  ArrowHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory ArrowHelper(Vector3 dir,
      [Vector3 origin, num length, num hex, num headLength, num headWidth]);
  external Line get line;
  external set line(Line v);
  external Mesh get cone;
  external set cone(Mesh v);
  external void setDirection(Vector3 dir);
  external void setLength(num length, [num headLength, num headWidth]);
  external void setColor(num hex);
}

@JS("THREE.AxisHelper")
class AxisHelper extends LineSegments {
  // @Ignore
  AxisHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory AxisHelper([num size]);
}

@JS("THREE.BoundingBoxHelper")
class BoundingBoxHelper extends Mesh {
  // @Ignore
  BoundingBoxHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory BoundingBoxHelper([Object3D object, num hex]);
  external Object3D get object;
  external set object(Object3D v);
  external Box3 get box;
  external set box(Box3 v);
  external void update();
}

@JS("THREE.BoxHelper")
class BoxHelper extends LineSegments {
  // @Ignore
  BoxHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory BoxHelper([Object3D object, Color color]);
  external void update([Object3D object]);
}

@JS("THREE.CameraHelper")
class CameraHelper extends LineSegments {
  // @Ignore
  CameraHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory CameraHelper(Camera camera);
  external Camera get camera;
  external set camera(Camera v);
  external dynamic /*JSMap of <String,List<num>>*/ get pointMap;
  external set pointMap(dynamic /*JSMap of <String,List<num>>*/ v);
  external void update();
}

@JS("THREE.DirectionalLightHelper")
class DirectionalLightHelper extends Object3D {
  // @Ignore
  DirectionalLightHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory DirectionalLightHelper(Light light, [num size]);
  external Light get light;
  external set light(Light v);
  external Line get lightPlane;
  external set lightPlane(Line v);
  external void dispose();
  external void update();
}

@JS("THREE.EdgesHelper")
class EdgesHelper extends LineSegments {
  // @Ignore
  EdgesHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory EdgesHelper(Object3D object, [num hex, num thresholdAngle]);
}

@JS("THREE.FaceNormalsHelper")
class FaceNormalsHelper extends LineSegments {
  // @Ignore
  FaceNormalsHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory FaceNormalsHelper(Object3D object,
      [num size, num hex, num linewidth]);
  external Object3D get object;
  external set object(Object3D v);
  external num get size;
  external set size(num v);
  external void update([Object3D object]);
}

@JS("THREE.GridHelper")
class GridHelper extends LineSegments {
  // @Ignore
  GridHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory GridHelper(num size, num divisions,
      [dynamic /*Color|num*/ color1, dynamic /*Color|num*/ color2]);
  external void setColors(
      [dynamic /*Color|num*/ color1, dynamic /*Color|num*/ color2]);
}

@JS("THREE.HemisphereLightHelper")
class HemisphereLightHelper extends Object3D {
  // @Ignore
  HemisphereLightHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory HemisphereLightHelper(Light light, num sphereSize);
  external Light get light;
  external set light(Light v);
  external List<Color> get colors;
  external set colors(List<Color> v);
  external Mesh get lightSphere;
  external set lightSphere(Mesh v);
  external void dispose();
  external void update();
}

@JS("THREE.PointLightHelper")
class PointLightHelper extends Object3D {
  // @Ignore
  PointLightHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory PointLightHelper(Light light, num sphereSize);
  external Light get light;
  external set light(Light v);
  external void dispose();
  external void update();
}

@JS("THREE.SkeletonHelper")
class SkeletonHelper extends LineSegments {
  // @Ignore
  SkeletonHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory SkeletonHelper(Object3D bone);
  external List<Bone> get bones;
  external set bones(List<Bone> v);
  external Object3D get root;
  external set root(Object3D v);
  external List<Bone> getBoneList(Object3D object);
  external void update();
}

@JS("THREE.SpotLightHelper")
class SpotLightHelper extends Object3D {
  // @Ignore
  SpotLightHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory SpotLightHelper(Light light);
  external Light get light;
  external set light(Light v);
  external void dispose();
  external void update();
}

@JS("THREE.VertexNormalsHelper")
class VertexNormalsHelper extends LineSegments {
  // @Ignore
  VertexNormalsHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory VertexNormalsHelper(Object3D object,
      [num size, num hex, num linewidth]);
  external Object3D get object;
  external set object(Object3D v);
  external num get size;
  external set size(num v);
  external void update([Object3D object]);
}

@JS("THREE.WireframeHelper")
class WireframeHelper extends LineSegments {
  // @Ignore
  WireframeHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory WireframeHelper(Object3D object, [num hex]);
}

/// Extras / Objects /////////////////////////////////////////////////////////////////////
@JS("THREE.ImmediateRenderObject")
class ImmediateRenderObject extends Object3D {
  // @Ignore
  ImmediateRenderObject.fakeConstructor$() : super.fakeConstructor$();
  external factory ImmediateRenderObject(Material material);
  external Material get material;
  external set material(Material v);
  external void render(Function renderCallback);
}

@anonymous
@JS()
abstract class MorphBlendMeshAnimation {
  external num get start;
  external set start(num v);
  external num get end;
  external set end(num v);
  external num get length;
  external set length(num v);
  external num get fps;
  external set fps(num v);
  external num get duration;
  external set duration(num v);
  external num get lastFrame;
  external set lastFrame(num v);
  external num get currentFrame;
  external set currentFrame(num v);
  external bool get active;
  external set active(bool v);
  external num get time;
  external set time(num v);
  external num get direction;
  external set direction(num v);
  external num get weight;
  external set weight(num v);
  external bool get directionBackwards;
  external set directionBackwards(bool v);
  external bool get mirroredLoop;
  external set mirroredLoop(bool v);
  external factory MorphBlendMeshAnimation(
      {num start,
      num end,
      num length,
      num fps,
      num duration,
      num lastFrame,
      num currentFrame,
      bool active,
      num time,
      num direction,
      num weight,
      bool directionBackwards,
      bool mirroredLoop});
}

@JS("THREE.MorphBlendMesh")
class MorphBlendMesh extends Mesh {
  // @Ignore
  MorphBlendMesh.fakeConstructor$() : super.fakeConstructor$();
  external factory MorphBlendMesh(Geometry geometry, Material material);
  external dynamic /*JSMap of <String,MorphBlendMeshAnimation>*/ get animationsMap;
  external set animationsMap(
      dynamic /*JSMap of <String,MorphBlendMeshAnimation>*/ v);
  external List<MorphBlendMeshAnimation> get animationsList;
  external set animationsList(List<MorphBlendMeshAnimation> v);
  external void createAnimation(String name, num start, num end, num fps);
  external void autoCreateAnimations(num fps);
  external void setAnimationDirectionForward(String name);
  external void setAnimationDirectionBackward(String name);
  external void setAnimationFPS(String name, num fps);
  external void setAnimationDuration(String name, num duration);
  external void setAnimationWeight(String name, num weight);
  external void setAnimationTime(String name, num time);
  external num getAnimationTime(String name);
  external num getAnimationDuration(String name);
  external void playAnimation(String name);
  external void stopAnimation(String name);
  external void update(num delta);
}
// End module THREE

// Module three
/* WARNING: export assignment not yet supported. */

// End module three
