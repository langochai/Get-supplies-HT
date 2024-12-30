; ModuleID = 'obj\Debug\110\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\110\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [232 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 33
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 34
	i64 160518225272466977, ; 2: Microsoft.Extensions.Hosting.Abstractions => 0x23a4679b5576e21 => 22
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 63
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 87
	i64 295915112840604065, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 88
	i64 354178770117062970, ; 6: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0x4ea4bb703cff13a => 31
	i64 634308326490598313, ; 7: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 78
	i64 648449422406355874, ; 8: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x8ffc15065568ba2 => 12
	i64 668723562677762733, ; 9: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 8
	i64 702024105029695270, ; 10: System.Drawing.Common => 0x9be17343c0e7726 => 106
	i64 720058930071658100, ; 11: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 72
	i64 872800313462103108, ; 12: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 69
	i64 940822596282819491, ; 13: System.Transactions => 0xd0e792aa81923a3 => 104
	i64 996343623809489702, ; 14: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 99
	i64 1000557547492888992, ; 15: Mono.Security.dll => 0xde2b1c9cba651a0 => 114
	i64 1120440138749646132, ; 16: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 101
	i64 1315114680217950157, ; 17: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 58
	i64 1425944114962822056, ; 18: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 3
	i64 1624659445732251991, ; 19: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 56
	i64 1628611045998245443, ; 20: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 80
	i64 1636321030536304333, ; 21: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 73
	i64 1731380447121279447, ; 22: Newtonsoft.Json => 0x18071957e9b889d7 => 36
	i64 1743969030606105336, ; 23: System.Memory.dll => 0x1833d297e88f2af8 => 43
	i64 1795316252682057001, ; 24: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 57
	i64 1836611346387731153, ; 25: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 87
	i64 1865037103900624886, ; 26: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 6
	i64 1875917498431009007, ; 27: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 54
	i64 1981742497975770890, ; 28: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 79
	i64 2040001226662520565, ; 29: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 115
	i64 2133195048986300728, ; 30: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 36
	i64 2136356949452311481, ; 31: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 84
	i64 2165725771938924357, ; 32: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 61
	i64 2193024466525470868, ; 33: NhatVatTu.Android => 0x1e6f302216fdc094 => 0
	i64 2200176636225660136, ; 34: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 27
	i64 2262844636196693701, ; 35: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 69
	i64 2284400282711631002, ; 36: System.Web.Services => 0x1fb3d1f42fd4249a => 110
	i64 2287887973817120656, ; 37: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 113
	i64 2329709569556905518, ; 38: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 76
	i64 2335503487726329082, ; 39: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 49
	i64 2337758774805907496, ; 40: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 46
	i64 2470498323731680442, ; 41: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 64
	i64 2479423007379663237, ; 42: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 91
	i64 2497223385847772520, ; 43: System.Runtime => 0x22a7eb7046413568 => 47
	i64 2547086958574651984, ; 44: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 53
	i64 2592350477072141967, ; 45: System.Xml.dll => 0x23f9e10627330e8f => 51
	i64 2624866290265602282, ; 46: mscorlib.dll => 0x246d65fbde2db8ea => 35
	i64 2656907746661064104, ; 47: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 16
	i64 2783046991838674048, ; 48: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 46
	i64 2897279701402357900, ; 49: Microsoft.Extensions.Hosting => 0x28353489b909908c => 23
	i64 2960931600190307745, ; 50: Xamarin.Forms.Core => 0x2917579a49927da1 => 97
	i64 3017704767998173186, ; 51: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 101
	i64 3168817962471953758, ; 52: Microsoft.Extensions.Hosting.Abstractions.dll => 0x2bf9e725d304955e => 22
	i64 3289520064315143713, ; 53: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 75
	i64 3293991522576715523, ; 54: Microsoft.Extensions.Logging.EventLog => 0x2db69bd664554f03 => 29
	i64 3303437397778967116, ; 55: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 55
	i64 3311221304742556517, ; 56: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 45
	i64 3396143930648122816, ; 57: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 19
	i64 3494946837667399002, ; 58: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 10
	i64 3522470458906976663, ; 59: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 89
	i64 3531994851595924923, ; 60: System.Numerics => 0x31042a9aade235bb => 44
	i64 3571415421602489686, ; 61: System.Runtime.dll => 0x319037675df7e556 => 47
	i64 3638003163729360188, ; 62: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 7
	i64 3655542548057982301, ; 63: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 10
	i64 3716579019761409177, ; 64: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 65: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 86
	i64 3869221888984012293, ; 66: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 28
	i64 3889433610606858880, ; 67: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 20
	i64 3966267475168208030, ; 68: System.Memory => 0x370b03412596249e => 43
	i64 4321865999928413850, ; 69: System.Diagnostics.EventLog.dll => 0x3bfa5a3a8c924e9a => 41
	i64 4418670123468915552, ; 70: Microsoft.Extensions.Logging.Console.dll => 0x3d524510f0ff0360 => 26
	i64 4525561845656915374, ; 71: System.ServiceModel.Internals => 0x3ece06856b710dae => 111
	i64 4636684751163556186, ; 72: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 93
	i64 4743821336939966868, ; 73: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 112
	i64 4754620528327149104, ; 74: Microsoft.Extensions.Logging.Console => 0x41fbce2df0b84630 => 26
	i64 4782108999019072045, ; 75: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 60
	i64 4794310189461587505, ; 76: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 53
	i64 4795410492532947900, ; 77: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 89
	i64 5142919913060024034, ; 78: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 98
	i64 5203618020066742981, ; 79: Xamarin.Essentials => 0x4836f704f0e652c5 => 96
	i64 5205316157927637098, ; 80: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 82
	i64 5348796042099802469, ; 81: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 83
	i64 5376510917114486089, ; 82: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 91
	i64 5408338804355907810, ; 83: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 90
	i64 5507995362134886206, ; 84: System.Core.dll => 0x4c705499688c873e => 39
	i64 5552873915470424749, ; 85: Microsoft.Extensions.Logging.EventLog.dll => 0x4d0fc567de25aaad => 29
	i64 5692067934154308417, ; 86: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 95
	i64 5896680224035167651, ; 87: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 77
	i64 6010974535988770325, ; 88: Microsoft.Extensions.Diagnostics.dll => 0x536b457e33877615 => 18
	i64 6085203216496545422, ; 89: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 99
	i64 6086316965293125504, ; 90: FormsViewGroup.dll => 0x5476f10882baef80 => 4
	i64 6175278734029192665, ; 91: Microsoft.Extensions.Configuration.CommandLine => 0x55b2ff4a62d57dd9 => 9
	i64 6222399776351216807, ; 92: System.Text.Json.dll => 0x565a67a0ffe264a7 => 50
	i64 6319713645133255417, ; 93: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 78
	i64 6401687960814735282, ; 94: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 76
	i64 6504860066809920875, ; 95: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 61
	i64 6548213210057960872, ; 96: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 67
	i64 6560151584539558821, ; 97: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 32
	i64 6591024623626361694, ; 98: System.Web.Services.dll => 0x5b7805f9751a1b5e => 110
	i64 6659513131007730089, ; 99: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 72
	i64 6876862101832370452, ; 100: System.Xml.Linq => 0x5f6f85a57d108914 => 52
	i64 6894844156784520562, ; 101: System.Numerics.Vectors => 0x5faf683aead1ad72 => 45
	i64 7036436454368433159, ; 102: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 74
	i64 7103753931438454322, ; 103: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 71
	i64 7488575175965059935, ; 104: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 52
	i64 7635363394907363464, ; 105: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 97
	i64 7637365915383206639, ; 106: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 96
	i64 7654504624184590948, ; 107: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7820441508502274321, ; 108: System.Data => 0x6c87ca1e14ff8111 => 103
	i64 7836164640616011524, ; 109: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 56
	i64 7842544549215967231, ; 110: NhatVatTu.dll => 0x6cd650b7473197ff => 37
	i64 7919757340696389605, ; 111: Microsoft.Extensions.Diagnostics.Abstractions => 0x6de8a157378027e5 => 17
	i64 7969868205614615900, ; 112: Microsoft.Extensions.Logging.Configuration => 0x6e9aa8e82656cd5c => 25
	i64 8038446328132759779, ; 113: Microsoft.Extensions.Logging.Configuration.dll => 0x6f8e4c588e6570e3 => 25
	i64 8044118961405839122, ; 114: System.ComponentModel.Composition => 0x6fa2739369944712 => 109
	i64 8083354569033831015, ; 115: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 75
	i64 8087206902342787202, ; 116: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 40
	i64 8103644804370223335, ; 117: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 105
	i64 8167236081217502503, ; 118: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 5
	i64 8318905602908530212, ; 119: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 113
	i64 8472685364375177308, ; 120: Microsoft.Extensions.Configuration.CommandLine.dll => 0x75950672dd3bc85c => 9
	i64 8601935802264776013, ; 121: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 90
	i64 8626175481042262068, ; 122: Java.Interop => 0x77b654e585b55834 => 5
	i64 8684531736582871431, ; 123: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 108
	i64 8695364240710937812, ; 124: Microsoft.Extensions.Logging.EventSource.dll => 0x78ac23b4f835acd4 => 30
	i64 8725526185868997716, ; 125: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 40
	i64 8816904670177563593, ; 126: Microsoft.Extensions.Diagnostics => 0x7a5bf015646a93c9 => 18
	i64 9312692141327339315, ; 127: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 95
	i64 9324707631942237306, ; 128: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 57
	i64 9650158550865574924, ; 129: Microsoft.Extensions.Configuration.Json => 0x85ec4012c28a7c0c => 13
	i64 9662334977499516867, ; 130: System.Numerics.dll => 0x8617827802b0cfc3 => 44
	i64 9678050649315576968, ; 131: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 64
	i64 9711637524876806384, ; 132: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 83
	i64 9808709177481450983, ; 133: Mono.Android.dll => 0x881f890734e555e7 => 34
	i64 9834056768316610435, ; 134: System.Transactions.dll => 0x8879968718899783 => 104
	i64 9998632235833408227, ; 135: Mono.Security => 0x8ac2470b209ebae3 => 114
	i64 10017511394021241210, ; 136: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 27
	i64 10038780035334861115, ; 137: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10039970824369229195, ; 138: NhatVatTu.Android.dll => 0x8b5524454dd04d8b => 0
	i64 10205853378024263619, ; 139: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 8
	i64 10229024438826829339, ; 140: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 67
	i64 10430153318873392755, ; 141: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 65
	i64 10447083246144586668, ; 142: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 6
	i64 10809043855025277762, ; 143: Microsoft.Extensions.Options.ConfigurationExtensions => 0x9601701e0c668b42 => 31
	i64 10847732767863316357, ; 144: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 58
	i64 11002576679268595294, ; 145: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 24
	i64 11004867042320771561, ; 146: Microsoft.Extensions.Logging.EventSource => 0x98b92444c9eee9e9 => 30
	i64 11023048688141570732, ; 147: System.Core => 0x98f9bc61168392ac => 39
	i64 11037814507248023548, ; 148: System.Xml => 0x992e31d0412bf7fc => 51
	i64 11162124722117608902, ; 149: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 94
	i64 11226290749488709958, ; 150: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 32
	i64 11340910727871153756, ; 151: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 66
	i64 11392833485892708388, ; 152: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 85
	i64 11529969570048099689, ; 153: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 94
	i64 11530571088791430846, ; 154: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 28
	i64 11578238080964724296, ; 155: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 74
	i64 11580057168383206117, ; 156: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 54
	i64 11597940890313164233, ; 157: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11625678642980940737, ; 158: NhatVatTu => 0xa156b5215bb96bc1 => 37
	i64 11672361001936329215, ; 159: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 71
	i64 12048689113179125827, ; 160: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 20
	i64 12058074296353848905, ; 161: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 21
	i64 12102847907131387746, ; 162: System.Buffers => 0xa7f5f40c43256f62 => 38
	i64 12137774235383566651, ; 163: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 92
	i64 12145679461940342714, ; 164: System.Text.Json => 0xa88e1f1ebcb62fba => 50
	i64 12451044538927396471, ; 165: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 70
	i64 12466513435562512481, ; 166: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 81
	i64 12487638416075308985, ; 167: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 68
	i64 12538491095302438457, ; 168: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 62
	i64 12550732019250633519, ; 169: System.IO.Compression => 0xae2d28465e8e1b2f => 107
	i64 12700543734426720211, ; 170: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 63
	i64 12843321153144804894, ; 171: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 33
	i64 12963446364377008305, ; 172: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 106
	i64 13370592475155966277, ; 173: System.Runtime.Serialization => 0xb98de304062ea945 => 3
	i64 13401370062847626945, ; 174: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 92
	i64 13454009404024712428, ; 175: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 102
	i64 13491513212026656886, ; 176: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 59
	i64 13550417756503177631, ; 177: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 19
	i64 13572454107664307259, ; 178: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 86
	i64 13647894001087880694, ; 179: System.Data.dll => 0xbd670f48cb071df6 => 103
	i64 13959074834287824816, ; 180: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 70
	i64 13967638549803255703, ; 181: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 98
	i64 14124974489674258913, ; 182: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 62
	i64 14172845254133543601, ; 183: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 84
	i64 14261073672896646636, ; 184: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 85
	i64 14486659737292545672, ; 185: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 77
	i64 14551742072151931844, ; 186: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 49
	i64 14644440854989303794, ; 187: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 82
	i64 14669215534098758659, ; 188: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 16
	i64 14792063746108907174, ; 189: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 102
	i64 14852515768018889994, ; 190: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 66
	i64 14905311287502520239, ; 191: Microsoft.Extensions.Hosting.dll => 0xceda4da4ee353faf => 23
	i64 14912225920358050525, ; 192: System.Security.Principal.Windows => 0xcef2de7759506add => 48
	i64 14954917835170835695, ; 193: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 15
	i64 14987728460634540364, ; 194: System.IO.Compression.dll => 0xcfff1ba06622494c => 107
	i64 14988210264188246988, ; 195: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 68
	i64 15004680457737980385, ; 196: Microsoft.Extensions.Configuration.UserSecrets => 0xd03b5560cbb7c9e1 => 14
	i64 15051741671811457419, ; 197: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0xd0e2874d8f44218b => 17
	i64 15227001540531775957, ; 198: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 7
	i64 15370334346939861994, ; 199: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 65
	i64 15391712275433856905, ; 200: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 15
	i64 15475196252089753159, ; 201: System.Diagnostics.EventLog => 0xd6c2f1000b441e47 => 41
	i64 15582737692548360875, ; 202: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 80
	i64 15609085926864131306, ; 203: System.dll => 0xd89e9cf3334914ea => 42
	i64 15777549416145007739, ; 204: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 88
	i64 15810740023422282496, ; 205: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 100
	i64 15827202283623377193, ; 206: Microsoft.Extensions.Configuration.Json.dll => 0xdba5849eef9f6929 => 13
	i64 15915482068648965105, ; 207: Microsoft.Extensions.Configuration.EnvironmentVariables => 0xdcdf269e1aebb3f1 => 11
	i64 15959458866502526117, ; 208: Microsoft.Extensions.Configuration.EnvironmentVariables.dll => 0xdd7b6348415764a5 => 11
	i64 15963349826457351533, ; 209: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 115
	i64 16154507427712707110, ; 210: System => 0xe03056ea4e39aa26 => 42
	i64 16321164108206115771, ; 211: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 24
	i64 16337011941688632206, ; 212: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 48
	i64 16565028646146589191, ; 213: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 109
	i64 16822611501064131242, ; 214: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 105
	i64 16833383113903931215, ; 215: mscorlib => 0xe99c30c1484d7f4f => 35
	i64 17024911836938395553, ; 216: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 55
	i64 17037200463775726619, ; 217: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 73
	i64 17047433665992082296, ; 218: Microsoft.Extensions.Configuration.FileExtensions => 0xec94a699197e4378 => 12
	i64 17071469805149661853, ; 219: Microsoft.Extensions.Configuration.UserSecrets.dll => 0xecea0b56d9c0aa9d => 14
	i64 17187273293601214786, ; 220: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 112
	i64 17205988430934219272, ; 221: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 21
	i64 17544493274320527064, ; 222: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 60
	i64 17704177640604968747, ; 223: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 81
	i64 17710060891934109755, ; 224: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 79
	i64 17838668724098252521, ; 225: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 38
	i64 17882897186074144999, ; 226: FormsViewGroup => 0xf82cd03e3ac830e7 => 4
	i64 17892495832318972303, ; 227: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 100
	i64 17928294245072900555, ; 228: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 108
	i64 18116111925905154859, ; 229: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 59
	i64 18129453464017766560, ; 230: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 111
	i64 18380184030268848184 ; 231: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 93
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [232 x i32] [
	i32 33, i32 34, i32 22, i32 63, i32 87, i32 88, i32 31, i32 78, ; 0..7
	i32 12, i32 8, i32 106, i32 72, i32 69, i32 104, i32 99, i32 114, ; 8..15
	i32 101, i32 58, i32 3, i32 56, i32 80, i32 73, i32 36, i32 43, ; 16..23
	i32 57, i32 87, i32 6, i32 54, i32 79, i32 115, i32 36, i32 84, ; 24..31
	i32 61, i32 0, i32 27, i32 69, i32 110, i32 113, i32 76, i32 49, ; 32..39
	i32 46, i32 64, i32 91, i32 47, i32 53, i32 51, i32 35, i32 16, ; 40..47
	i32 46, i32 23, i32 97, i32 101, i32 22, i32 75, i32 29, i32 55, ; 48..55
	i32 45, i32 19, i32 10, i32 89, i32 44, i32 47, i32 7, i32 10, ; 56..63
	i32 1, i32 86, i32 28, i32 20, i32 43, i32 41, i32 26, i32 111, ; 64..71
	i32 93, i32 112, i32 26, i32 60, i32 53, i32 89, i32 98, i32 96, ; 72..79
	i32 82, i32 83, i32 91, i32 90, i32 39, i32 29, i32 95, i32 77, ; 80..87
	i32 18, i32 99, i32 4, i32 9, i32 50, i32 78, i32 76, i32 61, ; 88..95
	i32 67, i32 32, i32 110, i32 72, i32 52, i32 45, i32 74, i32 71, ; 96..103
	i32 52, i32 97, i32 96, i32 2, i32 103, i32 56, i32 37, i32 17, ; 104..111
	i32 25, i32 25, i32 109, i32 75, i32 40, i32 105, i32 5, i32 113, ; 112..119
	i32 9, i32 90, i32 5, i32 108, i32 30, i32 40, i32 18, i32 95, ; 120..127
	i32 57, i32 13, i32 44, i32 64, i32 83, i32 34, i32 104, i32 114, ; 128..135
	i32 27, i32 2, i32 0, i32 8, i32 67, i32 65, i32 6, i32 31, ; 136..143
	i32 58, i32 24, i32 30, i32 39, i32 51, i32 94, i32 32, i32 66, ; 144..151
	i32 85, i32 94, i32 28, i32 74, i32 54, i32 1, i32 37, i32 71, ; 152..159
	i32 20, i32 21, i32 38, i32 92, i32 50, i32 70, i32 81, i32 68, ; 160..167
	i32 62, i32 107, i32 63, i32 33, i32 106, i32 3, i32 92, i32 102, ; 168..175
	i32 59, i32 19, i32 86, i32 103, i32 70, i32 98, i32 62, i32 84, ; 176..183
	i32 85, i32 77, i32 49, i32 82, i32 16, i32 102, i32 66, i32 23, ; 184..191
	i32 48, i32 15, i32 107, i32 68, i32 14, i32 17, i32 7, i32 65, ; 192..199
	i32 15, i32 41, i32 80, i32 42, i32 88, i32 100, i32 13, i32 11, ; 200..207
	i32 11, i32 115, i32 42, i32 24, i32 48, i32 109, i32 105, i32 35, ; 208..215
	i32 55, i32 73, i32 12, i32 14, i32 112, i32 21, i32 60, i32 81, ; 216..223
	i32 79, i32 38, i32 4, i32 100, i32 108, i32 59, i32 111, i32 93 ; 232..231
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
