; ModuleID = 'obj\Debug\110\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\110\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [232 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 78
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 102
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 36
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 97
	i32 98325684, ; 4: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 17
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 88
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 88
	i32 159306688, ; 7: System.ComponentModel.Annotations => 0x97ed3c0 => 112
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 63
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 89
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 61
	i32 221958352, ; 11: Microsoft.Extensions.Diagnostics.dll => 0xd3ad0d0 => 18
	i32 230216969, ; 12: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 73
	i32 232815796, ; 13: System.Web.Services => 0xde07cb4 => 110
	i32 278686392, ; 14: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 77
	i32 280482487, ; 15: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 71
	i32 318968648, ; 16: Xamarin.AndroidX.Activity.dll => 0x13031348 => 53
	i32 321597661, ; 17: System.Numerics => 0x132b30dd => 44
	i32 342366114, ; 18: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 75
	i32 385762202, ; 19: System.Memory.dll => 0x16fe439a => 43
	i32 442521989, ; 20: Xamarin.Essentials => 0x1a605985 => 96
	i32 450948140, ; 21: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 70
	i32 465846621, ; 22: mscorlib => 0x1bc4415d => 35
	i32 469710990, ; 23: System.dll => 0x1bff388e => 42
	i32 476646585, ; 24: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 71
	i32 486930444, ; 25: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 82
	i32 513247710, ; 26: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 33
	i32 517078233, ; 27: NhatVatTu.Android.dll => 0x1ed1fcd9 => 0
	i32 526420162, ; 28: System.Transactions.dll => 0x1f6088c2 => 104
	i32 539058512, ; 29: Microsoft.Extensions.Logging => 0x20216150 => 28
	i32 545795345, ; 30: Microsoft.Extensions.Logging.Configuration.dll => 0x20882d11 => 25
	i32 548916678, ; 31: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 6
	i32 605376203, ; 32: System.IO.Compression.FileSystem => 0x24154ecb => 108
	i32 627609679, ; 33: Xamarin.AndroidX.CustomView => 0x2568904f => 67
	i32 662205335, ; 34: System.Text.Encodings.Web.dll => 0x27787397 => 49
	i32 663517072, ; 35: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 93
	i32 666292255, ; 36: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 58
	i32 690569205, ; 37: System.Xml.Linq.dll => 0x29293ff5 => 52
	i32 692151471, ; 38: Microsoft.Extensions.Logging.Console.dll => 0x294164af => 26
	i32 731701662, ; 39: Microsoft.Extensions.Options.ConfigurationExtensions => 0x2b9ce19e => 31
	i32 775507847, ; 40: System.IO.Compression => 0x2e394f87 => 107
	i32 789151979, ; 41: Microsoft.Extensions.Options => 0x2f0980eb => 32
	i32 809851609, ; 42: System.Drawing.Common.dll => 0x30455ad9 => 106
	i32 843511501, ; 43: Xamarin.AndroidX.Print => 0x3246f6cd => 85
	i32 911181537, ; 44: NhatVatTu => 0x364f86e1 => 37
	i32 928116545, ; 45: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 102
	i32 955402788, ; 46: Newtonsoft.Json => 0x38f24a24 => 36
	i32 967690846, ; 47: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 75
	i32 974778368, ; 48: FormsViewGroup.dll => 0x3a19f000 => 4
	i32 999186168, ; 49: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 21
	i32 1012816738, ; 50: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 87
	i32 1028951442, ; 51: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 15
	i32 1035644815, ; 52: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 57
	i32 1042160112, ; 53: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 99
	i32 1048425084, ; 54: Microsoft.Extensions.Logging.EventSource => 0x3e7db27c => 30
	i32 1048992957, ; 55: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 17
	i32 1052210849, ; 56: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 79
	i32 1083032757, ; 57: Microsoft.Extensions.Logging.EventLog.dll => 0x408dc4b5 => 29
	i32 1089913930, ; 58: System.Diagnostics.EventLog.dll => 0x40f6c44a => 41
	i32 1098259244, ; 59: System => 0x41761b2c => 42
	i32 1106973742, ; 60: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 12
	i32 1110309514, ; 61: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 22
	i32 1127624469, ; 62: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 27
	i32 1173126369, ; 63: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 19
	i32 1175144683, ; 64: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 91
	i32 1204270330, ; 65: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 58
	i32 1267360935, ; 66: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 92
	i32 1293217323, ; 67: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 69
	i32 1365406463, ; 68: System.ServiceModel.Internals.dll => 0x516272ff => 111
	i32 1367676925, ; 69: Microsoft.Extensions.Configuration.CommandLine => 0x518517fd => 9
	i32 1370793479, ; 70: NhatVatTu.dll => 0x51b4a607 => 37
	i32 1376866003, ; 71: Xamarin.AndroidX.SavedState => 0x52114ed3 => 87
	i32 1395857551, ; 72: Xamarin.AndroidX.Media.dll => 0x5333188f => 83
	i32 1406073936, ; 73: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 64
	i32 1411638395, ; 74: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 46
	i32 1460219004, ; 75: Xamarin.Forms.Xaml => 0x57092c7c => 100
	i32 1462112819, ; 76: System.IO.Compression.dll => 0x57261233 => 107
	i32 1469204771, ; 77: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 56
	i32 1470490898, ; 78: Microsoft.Extensions.Primitives => 0x57a5e912 => 33
	i32 1521091094, ; 79: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 21
	i32 1582372066, ; 80: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 68
	i32 1592978981, ; 81: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 82: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 81
	i32 1624863272, ; 83: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 95
	i32 1632842087, ; 84: Microsoft.Extensions.Configuration.Json => 0x61533167 => 13
	i32 1636350590, ; 85: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 66
	i32 1639515021, ; 86: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 87: System.Runtime => 0x62c6282e => 47
	i32 1658251792, ; 88: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 101
	i32 1729485958, ; 89: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 62
	i32 1766324549, ; 90: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 89
	i32 1767075704, ; 91: Microsoft.Extensions.Configuration.UserSecrets.dll => 0x69536f78 => 14
	i32 1770582343, ; 92: Microsoft.Extensions.Logging.dll => 0x6988f147 => 28
	i32 1776026572, ; 93: System.Core.dll => 0x69dc03cc => 39
	i32 1788241197, ; 94: Xamarin.AndroidX.Fragment => 0x6a96652d => 70
	i32 1796167890, ; 95: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 6
	i32 1808609942, ; 96: Xamarin.AndroidX.Loader => 0x6bcd3296 => 81
	i32 1813201214, ; 97: Xamarin.Google.Android.Material => 0x6c13413e => 101
	i32 1828688058, ; 98: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 24
	i32 1867746548, ; 99: Xamarin.Essentials.dll => 0x6f538cf4 => 96
	i32 1878053835, ; 100: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 100
	i32 1885316902, ; 101: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 59
	i32 1919157823, ; 102: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 84
	i32 1968388702, ; 103: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 10
	i32 2011961780, ; 104: System.Buffers.dll => 0x77ec19b4 => 38
	i32 2019465201, ; 105: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 79
	i32 2048278909, ; 106: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 8
	i32 2055257422, ; 107: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 76
	i32 2072397586, ; 108: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 20
	i32 2079903147, ; 109: System.Runtime.dll => 0x7bf8cdab => 47
	i32 2090596640, ; 110: System.Numerics.Vectors => 0x7c9bf920 => 45
	i32 2097448633, ; 111: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 72
	i32 2126786730, ; 112: Xamarin.Forms.Platform.Android => 0x7ec430aa => 98
	i32 2181898931, ; 113: Microsoft.Extensions.Options.dll => 0x820d22b3 => 32
	i32 2192057212, ; 114: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 24
	i32 2193681939, ; 115: Microsoft.Extensions.Configuration.EnvironmentVariables.dll => 0x82c0ee13 => 11
	i32 2201231467, ; 116: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 117: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 91
	i32 2244775296, ; 118: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 82
	i32 2256548716, ; 119: Xamarin.AndroidX.MultiDex => 0x8680336c => 84
	i32 2261435625, ; 120: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 74
	i32 2266799131, ; 121: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 7
	i32 2279755925, ; 122: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 86
	i32 2315684594, ; 123: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 54
	i32 2371007202, ; 124: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 10
	i32 2383496789, ; 125: System.Security.Principal.Windows.dll => 0x8e114655 => 48
	i32 2435904999, ; 126: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 113
	i32 2471841756, ; 127: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 128: Java.Interop.dll => 0x93918882 => 5
	i32 2501346920, ; 129: System.Data.DataSetExtensions => 0x95178668 => 105
	i32 2505896520, ; 130: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 78
	i32 2509217888, ; 131: System.Diagnostics.EventLog => 0x958fa060 => 41
	i32 2570120770, ; 132: System.Text.Encodings.Web => 0x9930ee42 => 49
	i32 2581819634, ; 133: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 92
	i32 2588805703, ; 134: Microsoft.Extensions.Logging.EventSource.dll => 0x9a4e0a47 => 30
	i32 2592341985, ; 135: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 19
	i32 2616218305, ; 136: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 27
	i32 2620871830, ; 137: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 66
	i32 2633051222, ; 138: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 77
	i32 2732626843, ; 139: Xamarin.AndroidX.Activity => 0xa2e0939b => 53
	i32 2737747696, ; 140: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 56
	i32 2766581644, ; 141: Xamarin.Forms.Core => 0xa4e6af8c => 97
	i32 2778768386, ; 142: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 94
	i32 2810250172, ; 143: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 64
	i32 2819470561, ; 144: System.Xml.dll => 0xa80db4e1 => 51
	i32 2853208004, ; 145: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 94
	i32 2855708567, ; 146: Xamarin.AndroidX.Transition => 0xaa36a797 => 90
	i32 2903344695, ; 147: System.ComponentModel.Composition => 0xad0d8637 => 109
	i32 2905242038, ; 148: mscorlib.dll => 0xad2a79b6 => 35
	i32 2911054922, ; 149: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 20
	i32 2916838712, ; 150: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 95
	i32 2919462931, ; 151: System.Numerics.Vectors.dll => 0xae037813 => 45
	i32 2921128767, ; 152: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 55
	i32 2968338931, ; 153: System.Security.Principal.Windows => 0xb0ed41f3 => 48
	i32 2971004615, ; 154: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0xb115eec7 => 31
	i32 2978675010, ; 155: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 69
	i32 3020703001, ; 156: Microsoft.Extensions.Diagnostics => 0xb40c4519 => 18
	i32 3024354802, ; 157: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 73
	i32 3044182254, ; 158: FormsViewGroup => 0xb57288ee => 4
	i32 3109243939, ; 159: Microsoft.Extensions.Logging.Configuration => 0xb9534c23 => 25
	i32 3111772706, ; 160: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3124832203, ; 161: System.Threading.Tasks.Extensions => 0xba4127cb => 115
	i32 3188578740, ; 162: Microsoft.Extensions.Configuration.EnvironmentVariables => 0xbe0dd9b4 => 11
	i32 3204380047, ; 163: System.Data.dll => 0xbefef58f => 103
	i32 3211777861, ; 164: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 68
	i32 3236886769, ; 165: Microsoft.Extensions.Logging.EventLog => 0xc0eef8f1 => 29
	i32 3247949154, ; 166: Mono.Security => 0xc197c562 => 114
	i32 3258312781, ; 167: Xamarin.AndroidX.CardView => 0xc235e84d => 62
	i32 3265893370, ; 168: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 115
	i32 3267021929, ; 169: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 60
	i32 3280506390, ; 170: System.ComponentModel.Annotations.dll => 0xc3888e16 => 112
	i32 3317135071, ; 171: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 67
	i32 3317144872, ; 172: System.Data => 0xc5b79d28 => 103
	i32 3340431453, ; 173: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 59
	i32 3353484488, ; 174: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 72
	i32 3358260929, ; 175: System.Text.Json => 0xc82afec1 => 50
	i32 3362522851, ; 176: Xamarin.AndroidX.Core => 0xc86c06e3 => 65
	i32 3366347497, ; 177: Java.Interop => 0xc8a662e9 => 5
	i32 3374999561, ; 178: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 86
	i32 3395150330, ; 179: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 46
	i32 3404864099, ; 180: Microsoft.Extensions.Hosting.dll => 0xcaf21a63 => 23
	i32 3404865022, ; 181: System.ServiceModel.Internals => 0xcaf21dfe => 111
	i32 3421170118, ; 182: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 8
	i32 3428513518, ; 183: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 16
	i32 3429136800, ; 184: System.Xml => 0xcc6479a0 => 51
	i32 3430777524, ; 185: netstandard => 0xcc7d82b4 => 1
	i32 3471231830, ; 186: Microsoft.Extensions.Hosting => 0xcee6cb56 => 23
	i32 3476120550, ; 187: Mono.Android => 0xcf3163e6 => 34
	i32 3485117614, ; 188: System.Text.Json.dll => 0xcfbaacae => 50
	i32 3486566296, ; 189: System.Transactions => 0xcfd0c798 => 104
	i32 3501239056, ; 190: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 60
	i32 3509114376, ; 191: System.Xml.Linq => 0xd128d608 => 52
	i32 3536029504, ; 192: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 98
	i32 3567349600, ; 193: System.ComponentModel.Composition.dll => 0xd4a16f60 => 109
	i32 3620450613, ; 194: Microsoft.Extensions.Configuration.CommandLine.dll => 0xd7cbb135 => 9
	i32 3627220390, ; 195: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 85
	i32 3632359727, ; 196: Xamarin.Forms.Platform => 0xd881692f => 99
	i32 3633644679, ; 197: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 55
	i32 3641597786, ; 198: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 76
	i32 3645089577, ; 199: System.ComponentModel.DataAnnotations => 0xd943a729 => 113
	i32 3657292374, ; 200: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 7
	i32 3672681054, ; 201: Mono.Android.dll => 0xdae8aa5e => 34
	i32 3676310014, ; 202: System.Web.Services.dll => 0xdb2009fe => 110
	i32 3682565725, ; 203: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 61
	i32 3689375977, ; 204: System.Drawing.Common => 0xdbe768e9 => 106
	i32 3696924079, ; 205: NhatVatTu.Android => 0xdc5a95af => 0
	i32 3718780102, ; 206: Xamarin.AndroidX.Annotation => 0xdda814c6 => 54
	i32 3722202641, ; 207: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 13
	i32 3748608112, ; 208: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 40
	i32 3758424670, ; 209: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 12
	i32 3758932259, ; 210: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 74
	i32 3786282454, ; 211: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 63
	i32 3822602673, ; 212: Xamarin.AndroidX.Media => 0xe3d849b1 => 83
	i32 3829621856, ; 213: System.Numerics.dll => 0xe4436460 => 44
	i32 3841636137, ; 214: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 15
	i32 3885922214, ; 215: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 90
	i32 3896760992, ; 216: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 65
	i32 3920810846, ; 217: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 108
	i32 3921031405, ; 218: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 93
	i32 3945713374, ; 219: System.Data.DataSetExtensions.dll => 0xeb2ecede => 105
	i32 3955647286, ; 220: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 57
	i32 3963903781, ; 221: Microsoft.Extensions.Configuration.UserSecrets => 0xec445f25 => 14
	i32 4025784931, ; 222: System.Memory => 0xeff49a63 => 43
	i32 4075152723, ; 223: Microsoft.Extensions.Logging.Console => 0xf2e5e553 => 26
	i32 4078967171, ; 224: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 22
	i32 4105002889, ; 225: Mono.Security.dll => 0xf4ad5f89 => 114
	i32 4126470640, ; 226: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 16
	i32 4151237749, ; 227: System.Core => 0xf76edc75 => 39
	i32 4182413190, ; 228: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 80
	i32 4213026141, ; 229: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 40
	i32 4260525087, ; 230: System.Buffers => 0xfdf2741f => 38
	i32 4292120959 ; 231: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 80
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [232 x i32] [
	i32 78, i32 102, i32 36, i32 97, i32 17, i32 88, i32 88, i32 112, ; 0..7
	i32 63, i32 89, i32 61, i32 18, i32 73, i32 110, i32 77, i32 71, ; 8..15
	i32 53, i32 44, i32 75, i32 43, i32 96, i32 70, i32 35, i32 42, ; 16..23
	i32 71, i32 82, i32 33, i32 0, i32 104, i32 28, i32 25, i32 6, ; 24..31
	i32 108, i32 67, i32 49, i32 93, i32 58, i32 52, i32 26, i32 31, ; 32..39
	i32 107, i32 32, i32 106, i32 85, i32 37, i32 102, i32 36, i32 75, ; 40..47
	i32 4, i32 21, i32 87, i32 15, i32 57, i32 99, i32 30, i32 17, ; 48..55
	i32 79, i32 29, i32 41, i32 42, i32 12, i32 22, i32 27, i32 19, ; 56..63
	i32 91, i32 58, i32 92, i32 69, i32 111, i32 9, i32 37, i32 87, ; 64..71
	i32 83, i32 64, i32 46, i32 100, i32 107, i32 56, i32 33, i32 21, ; 72..79
	i32 68, i32 3, i32 81, i32 95, i32 13, i32 66, i32 2, i32 47, ; 80..87
	i32 101, i32 62, i32 89, i32 14, i32 28, i32 39, i32 70, i32 6, ; 88..95
	i32 81, i32 101, i32 24, i32 96, i32 100, i32 59, i32 84, i32 10, ; 96..103
	i32 38, i32 79, i32 8, i32 76, i32 20, i32 47, i32 45, i32 72, ; 104..111
	i32 98, i32 32, i32 24, i32 11, i32 2, i32 91, i32 82, i32 84, ; 112..119
	i32 74, i32 7, i32 86, i32 54, i32 10, i32 48, i32 113, i32 1, ; 120..127
	i32 5, i32 105, i32 78, i32 41, i32 49, i32 92, i32 30, i32 19, ; 128..135
	i32 27, i32 66, i32 77, i32 53, i32 56, i32 97, i32 94, i32 64, ; 136..143
	i32 51, i32 94, i32 90, i32 109, i32 35, i32 20, i32 95, i32 45, ; 144..151
	i32 55, i32 48, i32 31, i32 69, i32 18, i32 73, i32 4, i32 25, ; 152..159
	i32 3, i32 115, i32 11, i32 103, i32 68, i32 29, i32 114, i32 62, ; 160..167
	i32 115, i32 60, i32 112, i32 67, i32 103, i32 59, i32 72, i32 50, ; 168..175
	i32 65, i32 5, i32 86, i32 46, i32 23, i32 111, i32 8, i32 16, ; 176..183
	i32 51, i32 1, i32 23, i32 34, i32 50, i32 104, i32 60, i32 52, ; 184..191
	i32 98, i32 109, i32 9, i32 85, i32 99, i32 55, i32 76, i32 113, ; 192..199
	i32 7, i32 34, i32 110, i32 61, i32 106, i32 0, i32 54, i32 13, ; 200..207
	i32 40, i32 12, i32 74, i32 63, i32 83, i32 44, i32 15, i32 90, ; 208..215
	i32 65, i32 108, i32 93, i32 105, i32 57, i32 14, i32 43, i32 26, ; 216..223
	i32 22, i32 114, i32 16, i32 39, i32 80, i32 40, i32 38, i32 80 ; 232..231
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
