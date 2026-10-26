.class public final Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;
.super Ljava/lang/Object;
.source "EqualizerManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sakukelly/music/domain/equalizer/EqualizerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEqualizerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EqualizerManager.kt\ncom/sakukelly/music/domain/equalizer/EqualizerManager$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,235:1\n1#2:236\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R#\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;",
        "",
        "<init>",
        "()V",
        "instance",
        "Lcom/sakukelly/music/domain/equalizer/EqualizerManager;",
        "getInstance",
        "PRESETS",
        "",
        "",
        "",
        "",
        "getPRESETS",
        "()Ljava/util/Map;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/sakukelly/music/domain/equalizer/EqualizerManager;
    .locals 2

    .line 20
    invoke-static {}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->access$getInstance$cp()Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    .line 21
    :try_start_0
    invoke-static {}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->access$getInstance$cp()Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->Companion:Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;

    invoke-static {v0}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->access$setInstance$cp(Lcom/sakukelly/music/domain/equalizer/EqualizerManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getPRESETS()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->access$getPRESETS$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
