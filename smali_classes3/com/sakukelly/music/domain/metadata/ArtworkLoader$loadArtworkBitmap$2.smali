.class final Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ArtworkLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/domain/metadata/ArtworkLoader;->loadArtworkBitmap(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArtworkLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArtworkLoader.kt\ncom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,163:1\n1#2:164\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Bitmap;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sakukelly.music.domain.metadata.ArtworkLoader$loadArtworkBitmap$2"
    f = "ArtworkLoader.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $path:Ljava/lang/String;

.field final synthetic $targetSize:I

.field label:I

.field final synthetic this$0:Lcom/sakukelly/music/domain/metadata/ArtworkLoader;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/domain/metadata/ArtworkLoader;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/domain/metadata/ArtworkLoader;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->this$0:Lcom/sakukelly/music/domain/metadata/ArtworkLoader;

    iput-object p2, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->$path:Ljava/lang/String;

    iput p3, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->$targetSize:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;

    iget-object v0, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->this$0:Lcom/sakukelly/music/domain/metadata/ArtworkLoader;

    iget-object v1, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->$path:Ljava/lang/String;

    iget v2, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->$targetSize:I

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;-><init>(Lcom/sakukelly/music/domain/metadata/ArtworkLoader;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 125
    iget v0, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 126
    iget-object p1, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->this$0:Lcom/sakukelly/music/domain/metadata/ArtworkLoader;

    invoke-static {p1}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader;->access$getMemoryCache$p(Lcom/sakukelly/music/domain/metadata/ArtworkLoader;)Lcom/sakukelly/music/domain/metadata/ArtworkLoader$memoryCache$1;

    move-result-object p1

    iget-object v0, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->$path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$memoryCache$1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    return-object p1

    .line 128
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->$path:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    .line 132
    :cond_1
    :try_start_0
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 133
    iget-object v2, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->$path:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 136
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->$targetSize:I

    if-gt v2, v3, :cond_2

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->$targetSize:I

    if-le v2, v3, :cond_3

    .line 137
    :cond_2
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v2, v2, 0x2

    .line 138
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v3, v3, 0x2

    .line 139
    :goto_0
    div-int v4, v2, v1

    iget v5, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->$targetSize:I

    if-lt v4, v5, :cond_3

    div-int v4, v3, v1

    if-lt v4, v5, :cond_3

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 144
    :cond_3
    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 145
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 146
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 147
    iget-object v1, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->$path:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 149
    iget-object v1, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->this$0:Lcom/sakukelly/music/domain/metadata/ArtworkLoader;

    invoke-static {v1}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader;->access$getMemoryCache$p(Lcom/sakukelly/music/domain/metadata/ArtworkLoader;)Lcom/sakukelly/music/domain/metadata/ArtworkLoader$memoryCache$1;

    move-result-object v1

    iget-object v2, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$loadArtworkBitmap$2;->$path:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$memoryCache$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object v0, p1

    :catch_0
    return-object v0

    .line 125
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
