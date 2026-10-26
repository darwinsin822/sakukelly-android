.class public final Lcom/sakukelly/music/domain/equalizer/EqualizerManager;
.super Ljava/lang/Object;
.source "EqualizerManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0012\u0008\u0007\u0018\u0000 ;2\u00020\u0001:\u0001;B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u000bJ\u000e\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u000bJ\u0016\u0010.\u001a\u00020*2\u0006\u0010-\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\u000bJ\u000e\u00100\u001a\u00020*2\u0006\u00101\u001a\u00020\u0017J\u000e\u00102\u001a\u00020*2\u0006\u00103\u001a\u00020\u000bJ\u000e\u00104\u001a\u00020*2\u0006\u00103\u001a\u00020\u000bJ\u000e\u00105\u001a\u00020*2\u0006\u00106\u001a\u00020&J\u0006\u00107\u001a\u00020&J\u000e\u00108\u001a\u00020*2\u0006\u00109\u001a\u00020&J\u0006\u0010:\u001a\u00020*R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u001aR \u0010\u001b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u001c0\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u001d\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u001c0\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001aR\u0014\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001aR\u0014\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001aR\u0014\u0010%\u001a\u0008\u0012\u0004\u0012\u00020&0\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020&0\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001a\u00a8\u0006<"
    }
    d2 = {
        "Lcom/sakukelly/music/domain/equalizer/EqualizerManager;",
        "",
        "<init>",
        "()V",
        "equalizer",
        "Landroid/media/audiofx/Equalizer;",
        "bassBoost",
        "Landroid/media/audiofx/BassBoost;",
        "virtualizer",
        "Landroid/media/audiofx/Virtualizer;",
        "value",
        "",
        "numberOfBands",
        "getNumberOfBands",
        "()I",
        "_bandFrequencies",
        "",
        "bandFrequencies",
        "",
        "getBandFrequencies",
        "()Ljava/util/List;",
        "_isEnabled",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "isEnabled",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_bandLevels",
        "",
        "bandLevels",
        "getBandLevels",
        "_bassBoostStrength",
        "bassBoostStrength",
        "getBassBoostStrength",
        "_virtualizerStrength",
        "virtualizerStrength",
        "getVirtualizerStrength",
        "_currentPreset",
        "",
        "currentPreset",
        "getCurrentPreset",
        "init",
        "",
        "audioSessionId",
        "getBandLevel",
        "band",
        "setBandLevel",
        "levelMb",
        "setEnabled",
        "enabled",
        "setBassBoostStrength",
        "strength",
        "setVirtualizerStrength",
        "applyPreset",
        "presetName",
        "exportToJson",
        "importFromJson",
        "jsonStr",
        "release",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;

.field private static final PRESETS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile instance:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;


# instance fields
.field private final _bandFrequencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _bandLevels:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _bassBoostStrength:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _currentPreset:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _isEnabled:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _virtualizerStrength:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final bandLevels:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private bassBoost:Landroid/media/audiofx/BassBoost;

.field private final bassBoostStrength:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final currentPreset:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private equalizer:Landroid/media/audiofx/Equalizer;

.field private final isEnabled:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private numberOfBands:I

.field private virtualizer:Landroid/media/audiofx/Virtualizer;

.field private final virtualizerStrength:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->Companion:Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->$stable:I

    const/16 v1, 0x17

    .line 27
    new-array v1, v1, [Lkotlin/Pair;

    const/16 v2, 0xa

    new-array v3, v2, [Ljava/lang/Float;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const/4 v9, 0x4

    aput-object v4, v3, v9

    const/4 v10, 0x5

    aput-object v4, v3, v10

    const/4 v11, 0x6

    aput-object v4, v3, v11

    const/4 v12, 0x7

    aput-object v4, v3, v12

    aput-object v4, v3, v0

    const/16 v13, 0x9

    aput-object v4, v3, v13

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v14, "Flat"

    invoke-static {v14, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v5

    .line 28
    new-array v3, v2, [Ljava/lang/Float;

    const/high16 v14, 0x40900000    # 4.5f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v3, v5

    const/high16 v15, 0x40600000    # 3.5f

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v3, v6

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v3, v7

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v3, v8

    aput-object v16, v3, v9

    const/high16 v18, 0x40400000    # 3.0f

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aput-object v18, v3, v10

    const/high16 v19, 0x40800000    # 4.0f

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v3, v11

    aput-object v14, v3, v12

    aput-object v19, v3, v0

    aput-object v18, v3, v13

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v13, "Acoustic"

    invoke-static {v13, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v6

    .line 29
    new-array v3, v2, [Ljava/lang/Float;

    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v3, v5

    const/high16 v13, 0x41080000    # 8.5f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v3, v6

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v3, v7

    aput-object v18, v3, v8

    aput-object v17, v3, v9

    aput-object v4, v3, v10

    aput-object v4, v3, v11

    aput-object v17, v3, v12

    aput-object v16, v3, v0

    const/16 v13, 0x9

    aput-object v18, v3, v13

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v13, "Bass Extreme (Mega Bass)"

    invoke-static {v13, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v7

    .line 30
    new-array v3, v2, [Ljava/lang/Float;

    const/high16 v13, 0x40f00000    # 7.5f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v3, v5

    const/high16 v13, 0x40d00000    # 6.5f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v3, v6

    aput-object v14, v3, v7

    aput-object v16, v3, v8

    const/high16 v21, 0x3f000000    # 0.5f

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v3, v9

    const/high16 v21, -0x41000000    # -0.5f

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v3, v10

    const/high16 v21, -0x41000000    # -0.5f

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v3, v11

    const/high16 v21, 0x3f000000    # 0.5f

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v3, v12

    aput-object v16, v3, v0

    const/16 v20, 0x9

    aput-object v18, v3, v20

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v0, "Bass Heavy"

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v8

    .line 31
    new-array v0, v2, [Ljava/lang/Float;

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v5

    const/high16 v3, 0x40b00000    # 5.5f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v6

    aput-object v16, v0, v7

    const/high16 v22, -0x40800000    # -1.0f

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v0, v8

    const/high16 v23, -0x3fe00000    # -2.5f

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    aput-object v23, v0, v9

    aput-object v4, v0, v10

    const/high16 v23, 0x40200000    # 2.5f

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    aput-object v23, v0, v11

    aput-object v3, v0, v12

    const/high16 v23, 0x40e00000    # 7.0f

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    const/16 v21, 0x8

    aput-object v23, v0, v21

    const/high16 v23, 0x41000000    # 8.0f

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    const/16 v20, 0x9

    aput-object v23, v0, v20

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v12, "Bass & Treble"

    invoke-static {v12, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v9

    .line 32
    new-array v0, v2, [Ljava/lang/Float;

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v0, v5

    aput-object v19, v0, v6

    aput-object v18, v0, v7

    const/high16 v24, 0x40200000    # 2.5f

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v0, v8

    const/high16 v24, -0x40400000    # -1.5f

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v0, v9

    const/high16 v24, -0x40400000    # -1.5f

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v0, v10

    aput-object v4, v0, v11

    const/high16 v24, 0x40200000    # 2.5f

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    const/16 v23, 0x7

    aput-object v24, v0, v23

    const/16 v21, 0x8

    aput-object v15, v0, v21

    const/16 v20, 0x9

    aput-object v19, v0, v20

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v11, "Classical"

    invoke-static {v11, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v10

    .line 33
    new-array v0, v2, [Ljava/lang/Float;

    aput-object v14, v0, v5

    aput-object v3, v0, v6

    aput-object v15, v0, v7

    aput-object v4, v0, v8

    aput-object v4, v0, v9

    aput-object v4, v0, v10

    const/4 v11, 0x6

    aput-object v16, v0, v11

    const/16 v23, 0x7

    aput-object v15, v0, v23

    const/16 v21, 0x8

    aput-object v14, v0, v21

    const/16 v20, 0x9

    aput-object v12, v0, v20

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v10, "Club / Dance"

    invoke-static {v10, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v11

    .line 34
    new-array v0, v2, [Ljava/lang/Float;

    aput-object v13, v0, v5

    aput-object v3, v0, v6

    const/high16 v10, 0x40200000    # 2.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v7

    aput-object v4, v0, v8

    const/high16 v10, -0x40000000    # -2.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v9

    const/4 v10, 0x5

    aput-object v16, v0, v10

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x6

    aput-object v10, v0, v11

    const/4 v10, 0x7

    aput-object v14, v0, v10

    const/16 v11, 0x8

    aput-object v13, v0, v11

    const/high16 v11, 0x40f00000    # 7.5f

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/16 v20, 0x9

    aput-object v11, v0, v20

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v11, "Electronic / EDM"

    invoke-static {v11, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v10

    .line 35
    new-array v0, v2, [Ljava/lang/Float;

    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v5

    const/high16 v10, 0x40e00000    # 7.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v6

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v7

    aput-object v19, v0, v8

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v9

    const/4 v10, 0x5

    aput-object v4, v0, v10

    const/4 v10, 0x6

    aput-object v22, v0, v10

    const/high16 v10, -0x40400000    # -1.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x7

    aput-object v10, v0, v11

    const/high16 v10, -0x40000000    # -2.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/16 v11, 0x8

    aput-object v10, v0, v11

    const/high16 v10, -0x40000000    # -2.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/16 v20, 0x9

    aput-object v10, v0, v20

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v10, "Full Bass"

    invoke-static {v10, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v11

    .line 36
    new-array v0, v2, [Ljava/lang/Float;

    const/high16 v10, -0x3f600000    # -5.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v5

    const/high16 v10, -0x3f800000    # -4.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v6

    const/high16 v10, -0x3fc00000    # -3.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v7

    aput-object v22, v0, v8

    aput-object v17, v0, v9

    const/4 v10, 0x5

    aput-object v15, v0, v10

    const/4 v10, 0x6

    aput-object v13, v0, v10

    const/high16 v10, 0x41080000    # 8.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x7

    aput-object v10, v0, v11

    const/high16 v10, 0x41280000    # 10.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/16 v11, 0x8

    aput-object v10, v0, v11

    const/high16 v10, 0x41380000    # 11.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/16 v11, 0x9

    aput-object v10, v0, v11

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v10, "Full Treble"

    invoke-static {v10, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v11

    .line 37
    new-array v0, v2, [Ljava/lang/Float;

    aput-object v3, v0, v5

    aput-object v19, v0, v6

    aput-object v16, v0, v7

    aput-object v17, v0, v8

    aput-object v22, v0, v9

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x5

    aput-object v10, v0, v11

    const/4 v10, 0x6

    aput-object v16, v0, v10

    const/4 v10, 0x7

    aput-object v14, v0, v10

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/16 v11, 0x8

    aput-object v10, v0, v11

    const/high16 v10, 0x40e00000    # 7.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/16 v11, 0x9

    aput-object v10, v0, v11

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v10, "Headphones / Earbuds"

    invoke-static {v10, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v2

    .line 38
    new-array v0, v2, [Ljava/lang/Float;

    aput-object v13, v0, v5

    aput-object v14, v0, v6

    aput-object v16, v0, v7

    aput-object v22, v0, v8

    const/high16 v10, -0x3fc00000    # -3.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v9

    const/4 v10, 0x5

    aput-object v17, v0, v10

    const/4 v10, 0x6

    aput-object v19, v0, v10

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x7

    aput-object v10, v0, v11

    const/high16 v10, 0x40f00000    # 7.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/16 v11, 0x8

    aput-object v10, v0, v11

    const/high16 v10, 0x41080000    # 8.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/16 v11, 0x9

    aput-object v10, v0, v11

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v10, "Heavy Metal"

    invoke-static {v10, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v10, 0xb

    aput-object v0, v1, v10

    .line 39
    new-array v0, v2, [Ljava/lang/Float;

    const/high16 v10, 0x40e00000    # 7.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v5

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v6

    aput-object v18, v0, v7

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v8

    aput-object v22, v0, v9

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x5

    aput-object v10, v0, v11

    const/high16 v10, 0x40200000    # 2.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x6

    aput-object v10, v0, v11

    const/4 v10, 0x7

    aput-object v18, v0, v10

    const/16 v10, 0x8

    aput-object v14, v0, v10

    const/16 v10, 0x9

    aput-object v3, v0, v10

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v10, "Hip-Hop / Urban"

    invoke-static {v10, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v10, 0xc

    aput-object v0, v1, v10

    .line 40
    new-array v0, v2, [Ljava/lang/Float;

    aput-object v15, v0, v5

    const/high16 v10, 0x40200000    # 2.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v6

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v7

    aput-object v16, v0, v8

    const/high16 v10, -0x40400000    # -1.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v9

    const/high16 v10, -0x40400000    # -1.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x5

    aput-object v10, v0, v11

    const/4 v10, 0x6

    aput-object v4, v0, v10

    const/4 v10, 0x7

    aput-object v16, v0, v10

    const/16 v10, 0x8

    aput-object v15, v0, v10

    const/16 v10, 0x9

    aput-object v14, v0, v10

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v10, "Jazz"

    invoke-static {v10, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v10, 0xd

    aput-object v0, v1, v10

    .line 41
    new-array v0, v2, [Ljava/lang/Float;

    aput-object v13, v0, v5

    aput-object v12, v0, v6

    aput-object v16, v0, v7

    const/high16 v10, -0x41000000    # -0.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v8

    aput-object v22, v0, v9

    const/4 v10, 0x5

    aput-object v17, v0, v10

    const/4 v10, 0x6

    aput-object v16, v0, v10

    const/4 v10, 0x7

    aput-object v15, v0, v10

    const/16 v10, 0x8

    aput-object v12, v0, v10

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/16 v11, 0x9

    aput-object v10, v0, v11

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v10, "Latin / Reggaeton"

    invoke-static {v10, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v10, 0xe

    aput-object v0, v1, v10

    .line 42
    new-array v0, v2, [Ljava/lang/Float;

    const/high16 v10, -0x40000000    # -2.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v5

    aput-object v4, v0, v6

    aput-object v16, v0, v7

    aput-object v15, v0, v8

    aput-object v14, v0, v9

    const/4 v10, 0x5

    aput-object v14, v0, v10

    const/4 v10, 0x6

    aput-object v15, v0, v10

    const/high16 v10, 0x40200000    # 2.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x7

    aput-object v10, v0, v11

    const/16 v10, 0x8

    aput-object v16, v0, v10

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/16 v11, 0x9

    aput-object v10, v0, v11

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v10, "Live / Concert"

    invoke-static {v10, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v10, 0xf

    aput-object v0, v1, v10

    .line 43
    new-array v0, v2, [Ljava/lang/Float;

    aput-object v3, v0, v5

    aput-object v14, v0, v6

    const/high16 v10, 0x40200000    # 2.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v7

    aput-object v17, v0, v8

    aput-object v4, v0, v9

    const/4 v10, 0x5

    aput-object v17, v0, v10

    const/4 v10, 0x6

    aput-object v16, v0, v10

    const/4 v10, 0x7

    aput-object v19, v0, v10

    const/16 v10, 0x8

    aput-object v12, v0, v10

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/16 v11, 0x9

    aput-object v10, v0, v11

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v10, "Party"

    invoke-static {v10, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v10, 0x10

    aput-object v0, v1, v10

    .line 44
    new-array v0, v2, [Ljava/lang/Float;

    const/high16 v10, -0x40400000    # -1.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v5

    aput-object v17, v0, v6

    aput-object v18, v0, v7

    aput-object v12, v0, v8

    aput-object v14, v0, v9

    const/4 v10, 0x5

    aput-object v16, v0, v10

    const/4 v10, 0x6

    aput-object v4, v0, v10

    const/4 v10, 0x7

    aput-object v17, v0, v10

    const/16 v10, 0x8

    aput-object v15, v0, v10

    const/16 v10, 0x9

    aput-object v14, v0, v10

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v10, "Pop"

    invoke-static {v10, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v10, 0x11

    aput-object v0, v1, v10

    .line 45
    new-array v0, v2, [Ljava/lang/Float;

    aput-object v12, v0, v5

    aput-object v13, v0, v6

    aput-object v18, v0, v7

    aput-object v22, v0, v8

    const/high16 v10, -0x40000000    # -2.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v9

    const/4 v10, 0x5

    aput-object v17, v0, v10

    const/high16 v10, 0x40200000    # 2.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x6

    aput-object v10, v0, v11

    const/4 v10, 0x7

    aput-object v15, v0, v10

    const/16 v10, 0x8

    aput-object v14, v0, v10

    const/16 v10, 0x9

    aput-object v12, v0, v10

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v10, "R&B / Soul"

    invoke-static {v10, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v10, 0x12

    aput-object v0, v1, v10

    .line 46
    new-array v0, v2, [Ljava/lang/Float;

    aput-object v3, v0, v5

    aput-object v15, v0, v6

    aput-object v22, v0, v7

    const/high16 v10, -0x3fe00000    # -2.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v0, v8

    aput-object v17, v0, v9

    const/4 v10, 0x5

    aput-object v18, v0, v10

    const/4 v10, 0x6

    aput-object v3, v0, v10

    const/4 v3, 0x7

    aput-object v13, v0, v3

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v10, 0x8

    aput-object v3, v0, v10

    const/high16 v3, 0x40f00000    # 7.5f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v10, 0x9

    aput-object v3, v0, v10

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, "Rock"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x13

    aput-object v0, v1, v3

    .line 47
    new-array v0, v2, [Ljava/lang/Float;

    aput-object v18, v0, v5

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v6

    aput-object v4, v0, v7

    aput-object v22, v0, v8

    aput-object v22, v0, v9

    const/4 v3, 0x5

    aput-object v4, v0, v3

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v10, 0x6

    aput-object v3, v0, v10

    const/4 v3, 0x7

    aput-object v18, v0, v3

    const/16 v3, 0x8

    aput-object v19, v0, v3

    const/16 v3, 0x9

    aput-object v12, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, "Soft / Calm"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x14

    aput-object v0, v1, v3

    .line 48
    new-array v0, v2, [Ljava/lang/Float;

    aput-object v13, v0, v5

    aput-object v12, v0, v6

    aput-object v16, v0, v7

    aput-object v4, v0, v8

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v9

    const/4 v3, 0x5

    aput-object v16, v0, v3

    const/4 v3, 0x6

    aput-object v14, v0, v3

    const/4 v3, 0x7

    aput-object v13, v0, v3

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v0, v4

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, "Techno"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x15

    aput-object v0, v1, v3

    .line 49
    new-array v0, v2, [Ljava/lang/Float;

    const/high16 v2, -0x3fe00000    # -2.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v5

    const/high16 v2, -0x40400000    # -1.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v6

    aput-object v17, v0, v7

    aput-object v15, v0, v8

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v9

    const/4 v2, 0x5

    aput-object v12, v0, v2

    const/4 v2, 0x6

    aput-object v15, v0, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const/16 v2, 0x8

    aput-object v22, v0, v2

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "Vocal Booster / Clear Voice"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x16

    aput-object v0, v1, v2

    .line 26
    invoke-static {v1}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->PRESETS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 57
    iput v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->numberOfBands:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_bandFrequencies:Ljava/util/List;

    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_isEnabled:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 64
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->isEnabled:Lkotlinx/coroutines/flow/StateFlow;

    .line 66
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_bandLevels:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 67
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->bandLevels:Lkotlinx/coroutines/flow/StateFlow;

    const/4 v0, 0x0

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_bassBoostStrength:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 70
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->bassBoostStrength:Lkotlinx/coroutines/flow/StateFlow;

    .line 72
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_virtualizerStrength:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 73
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->virtualizerStrength:Lkotlinx/coroutines/flow/StateFlow;

    .line 75
    const-string v0, "Flat"

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_currentPreset:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 76
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->currentPreset:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/sakukelly/music/domain/equalizer/EqualizerManager;
    .locals 1

    .line 13
    sget-object v0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->instance:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    return-object v0
.end method

.method public static final synthetic access$getPRESETS$cp()Ljava/util/Map;
    .locals 1

    .line 13
    sget-object v0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->PRESETS:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/sakukelly/music/domain/equalizer/EqualizerManager;)V
    .locals 0

    .line 13
    sput-object p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->instance:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    return-void
.end method


# virtual methods
.method public final applyPreset(Ljava/lang/String;)V
    .locals 7

    const-string v0, "presetName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->PRESETS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_currentPreset:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 163
    iget p1, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->numberOfBands:I

    .line 164
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    .line 167
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x64

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v4, -0x4b0

    const/16 v5, 0x4b0

    .line 168
    invoke-static {v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v3

    .line 170
    :try_start_0
    iget-object v4, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->equalizer:Landroid/media/audiofx/Equalizer;

    if-eqz v4, :cond_2

    int-to-short v5, v2

    int-to-short v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :catch_0
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 174
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_3
    iget-object p1, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_bandLevels:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final exportToJson()Ljava/lang/String;
    .locals 7

    .line 180
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 181
    iget-object v1, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_isEnabled:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "enabled"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 182
    iget-object v1, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_currentPreset:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "preset"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    iget-object v1, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_bassBoostStrength:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "bassBoost"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    iget-object v1, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_virtualizerStrength:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "virtualizer"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 187
    iget v2, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->numberOfBands:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 188
    iget-object v5, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_bandLevels:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 190
    :cond_1
    const-string v2, "bands"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getBandFrequencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_bandFrequencies:Ljava/util/List;

    return-object v0
.end method

.method public final getBandLevel(I)I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->equalizer:Landroid/media/audiofx/Equalizer;

    if-eqz v0, :cond_0

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_bandLevels:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getBandLevels()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->bandLevels:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getBassBoostStrength()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->bassBoostStrength:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getCurrentPreset()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->currentPreset:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getNumberOfBands()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->numberOfBands:I

    return v0
.end method

.method public final getVirtualizerStrength()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->virtualizerStrength:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final importFromJson(Ljava/lang/String;)V
    .locals 6

    const-string v0, "jsonStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 197
    const-string p1, "enabled"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->setEnabled(Z)V

    .line 198
    const-string p1, "bassBoost"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->setBassBoostStrength(I)V

    .line 199
    const-string p1, "virtualizer"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->setVirtualizerStrength(I)V

    .line 200
    iget-object p1, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_currentPreset:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v2, "preset"

    const-string v3, "Flat"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 202
    const-string p1, "bands"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 204
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 205
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 206
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 207
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 209
    :try_start_1
    iget-object v4, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->equalizer:Landroid/media/audiofx/Equalizer;

    if-eqz v4, :cond_0

    int-to-short v5, v1

    int-to-short v3, v3

    invoke-virtual {v4, v5, v3}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 210
    :catch_0
    :try_start_2
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_bandLevels:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error importing EQ: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EqualizerManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public final init(I)V
    .locals 7

    .line 79
    invoke-virtual {p0}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->release()V

    .line 81
    :try_start_0
    new-instance v0, Landroid/media/audiofx/Equalizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->equalizer:Landroid/media/audiofx/Equalizer;

    .line 82
    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result v0

    iput v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->numberOfBands:I

    .line 84
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_bandFrequencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 86
    iget v2, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->numberOfBands:I

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    .line 87
    iget-object v4, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_bandFrequencies:Ljava/util/List;

    iget-object v5, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->equalizer:Landroid/media/audiofx/Equalizer;

    if-eqz v5, :cond_0

    int-to-short v6, v3

    invoke-virtual {v5, v6}, Landroid/media/audiofx/Equalizer;->getCenterFreq(S)I

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->equalizer:Landroid/media/audiofx/Equalizer;

    if-eqz v5, :cond_1

    int-to-short v6, v3

    invoke-virtual {v5, v6}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v5

    goto :goto_2

    :cond_1
    move v5, v1

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_bandLevels:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->equalizer:Landroid/media/audiofx/Equalizer;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_isEnabled:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    .line 94
    :cond_3
    new-instance v0, Landroid/media/audiofx/BassBoost;

    invoke-direct {v0, v1, p1}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->bassBoost:Landroid/media/audiofx/BassBoost;

    .line 95
    iget-object v2, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_isEnabled:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 96
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->bassBoost:Landroid/media/audiofx/BassBoost;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->getStrengthSupported()Z

    move-result v0

    if-ne v0, v2, :cond_4

    .line 97
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->bassBoost:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_bassBoostStrength:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v0, v3}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    .line 101
    :cond_4
    new-instance v0, Landroid/media/audiofx/Virtualizer;

    invoke-direct {v0, v1, p1}, Landroid/media/audiofx/Virtualizer;-><init>(II)V

    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->virtualizer:Landroid/media/audiofx/Virtualizer;

    .line 102
    iget-object p1, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_isEnabled:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/audiofx/Virtualizer;->setEnabled(Z)I

    .line 103
    iget-object p1, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->virtualizer:Landroid/media/audiofx/Virtualizer;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/media/audiofx/Virtualizer;->getStrengthSupported()Z

    move-result p1

    if-ne p1, v2, :cond_5

    .line 104
    iget-object p1, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->virtualizer:Landroid/media/audiofx/Virtualizer;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_virtualizerStrength:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Landroid/media/audiofx/Virtualizer;->setStrength(S)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to init Equalizer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EqualizerManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void
.end method

.method public final isEnabled()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->isEnabled:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final release()V
    .locals 2

    const/4 v0, 0x0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->equalizer:Landroid/media/audiofx/Equalizer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/audiofx/Equalizer;->release()V

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->bassBoost:Landroid/media/audiofx/BassBoost;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/audiofx/BassBoost;->release()V

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->virtualizer:Landroid/media/audiofx/Virtualizer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/audiofx/Virtualizer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 229
    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->equalizer:Landroid/media/audiofx/Equalizer;

    .line 230
    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->bassBoost:Landroid/media/audiofx/BassBoost;

    .line 231
    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->virtualizer:Landroid/media/audiofx/Virtualizer;

    throw v1

    .line 229
    :catch_0
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->equalizer:Landroid/media/audiofx/Equalizer;

    .line 230
    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->bassBoost:Landroid/media/audiofx/BassBoost;

    .line 231
    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->virtualizer:Landroid/media/audiofx/Virtualizer;

    return-void
.end method

.method public final setBandLevel(II)V
    .locals 3

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->equalizer:Landroid/media/audiofx/Equalizer;

    if-eqz v0, :cond_0

    int-to-short v1, p1

    int-to-short v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_bandLevels:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 119
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_bandLevels:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_currentPreset:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v1, "Custom"

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error setting band "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EqualizerManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final setBassBoostStrength(I)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_bassBoostStrength:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->bassBoost:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->getStrengthSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->bassBoost:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_0

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Landroid/media/audiofx/BassBoost;->setStrength(S)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error setting bass boost: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EqualizerManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_isEnabled:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->equalizer:Landroid/media/audiofx/Equalizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->bassBoost:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->virtualizer:Landroid/media/audiofx/Virtualizer;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/media/audiofx/Virtualizer;->setEnabled(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error setting enabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EqualizerManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final setVirtualizerStrength(I)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->_virtualizerStrength:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->virtualizer:Landroid/media/audiofx/Virtualizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/audiofx/Virtualizer;->getStrengthSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->virtualizer:Landroid/media/audiofx/Virtualizer;

    if-eqz v0, :cond_0

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Landroid/media/audiofx/Virtualizer;->setStrength(S)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error setting virtualizer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EqualizerManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
