.class public final Lcom/sakukelly/music/player/VolumeBooster;
.super Ljava/lang/Object;
.source "VolumeBooster.java"


# static fields
.field private static sAudioSessionId:I

.field private static sLoudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

.field private static sTargetGainmB:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sakukelly/music/player/VolumeBooster;->sLoudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    const/16 v0, 0x28a   # 650 mB (+6.5 dB boost)

    sput v0, Lcom/sakukelly/music/player/VolumeBooster;->sTargetGainmB:I

    const/4 v0, 0x0

    sput v0, Lcom/sakukelly/music/player/VolumeBooster;->sAudioSessionId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(I)V
    .locals 2

    if-gtz p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/sakukelly/music/player/VolumeBooster;->sLoudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/audiofx/LoudnessEnhancer;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sakukelly/music/player/VolumeBooster;->sLoudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    :cond_1
    sput p0, Lcom/sakukelly/music/player/VolumeBooster;->sAudioSessionId:I

    new-instance v0, Landroid/media/audiofx/LoudnessEnhancer;

    invoke-direct {v0, p0}, Landroid/media/audiofx/LoudnessEnhancer;-><init>(I)V

    sget p0, Lcom/sakukelly/music/player/VolumeBooster;->sTargetGainmB:I

    invoke-virtual {v0, p0}, Landroid/media/audiofx/LoudnessEnhancer;->setTargetGain(I)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/media/audiofx/LoudnessEnhancer;->setEnabled(Z)I

    sput-object v0, Lcom/sakukelly/music/player/VolumeBooster;->sLoudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setTargetGain(I)V
    .locals 1

    sput p0, Lcom/sakukelly/music/player/VolumeBooster;->sTargetGainmB:I

    :try_start_0
    sget-object v0, Lcom/sakukelly/music/player/VolumeBooster;->sLoudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/media/audiofx/LoudnessEnhancer;->setTargetGain(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static release()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/sakukelly/music/player/VolumeBooster;->sLoudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/audiofx/LoudnessEnhancer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sakukelly/music/player/VolumeBooster;->sLoudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    return-void
.end method
