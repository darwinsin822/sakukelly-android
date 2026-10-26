.class public final Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer;
.super Ljava/lang/Object;
.source "LoudnessNormalizer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0015\u0010\u000c\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0007J\u0006\u0010\u0012\u001a\u00020\tJ\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0086@\u00a2\u0006\u0002\u0010\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer;",
        "",
        "<init>",
        "()V",
        "loudnessEnhancer",
        "Landroid/media/audiofx/LoudnessEnhancer;",
        "isEnabled",
        "",
        "attach",
        "",
        "audioSessionId",
        "",
        "applyGain",
        "measuredLufs",
        "",
        "(Ljava/lang/Float;)V",
        "setEnabled",
        "enabled",
        "release",
        "measureLoudness",
        "filePath",
        "",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

.field public static final Companion:Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer$Companion;

.field public static final MAX_GAIN_DB:F = 12.0f

.field public static final MIN_GAIN_DB:F = -12.0f

.field public static final TARGET_LUFS:F = -14.0f


# instance fields
.field private isEnabled:Z

.field private loudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer;->Companion:Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyGain(Ljava/lang/Float;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer;->loudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-boolean v1, p0, Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer;->isEnabled:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, -0x3ea00000    # -14.0f

    .line 56
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr v1, p1

    const/high16 p1, -0x3ec00000    # -12.0f

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, p1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    const/16 v1, 0x64

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 60
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/audiofx/LoudnessEnhancer;->setTargetGain(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 51
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/media/audiofx/LoudnessEnhancer;->setTargetGain(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public final attach(I)V
    .locals 1

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer;->loudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/audiofx/LoudnessEnhancer;->release()V

    .line 36
    :cond_0
    new-instance v0, Landroid/media/audiofx/LoudnessEnhancer;

    invoke-direct {v0, p1}, Landroid/media/audiofx/LoudnessEnhancer;-><init>(I)V

    .line 37
    iget-boolean p1, p0, Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer;->isEnabled:Z

    invoke-virtual {v0, p1}, Landroid/media/audiofx/LoudnessEnhancer;->setEnabled(Z)I

    .line 36
    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer;->loudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer;->loudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    :goto_0
    return-void
.end method

.method public final measureLoudness(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 91
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer$measureLoudness$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer$measureLoudness$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final release()V
    .locals 1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer;->loudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/audiofx/LoudnessEnhancer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer;->loudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    .line 67
    iput-boolean p1, p0, Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer;->isEnabled:Z

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer;->loudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/audiofx/LoudnessEnhancer;->setEnabled(Z)I

    :cond_0
    if-nez p1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/sakukelly/music/domain/equalizer/LoudnessNormalizer;->loudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/audiofx/LoudnessEnhancer;->setTargetGain(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
