.class public final Lcom/sakukelly/music/SakuKellyApp;
.super Landroid/app/Application;
.source "SakuKellyApp.kt"

# interfaces
.implements Lcoil/ImageLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sakukelly/music/SakuKellyApp$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \t2\u00020\u00012\u00020\u0002:\u0001\tB\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/sakukelly/music/SakuKellyApp;",
        "Landroid/app/Application;",
        "Lcoil/ImageLoaderFactory;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "newImageLoader",
        "Lcoil/ImageLoader;",
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

.field public static final Companion:Lcom/sakukelly/music/SakuKellyApp$Companion;

.field private static database:Lcom/sakukelly/music/data/db/AppDatabase;

.field private static okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public static synthetic $r8$lambda$70xb6OJQk3EnMahUcpUKIe7nNqI(Lcom/sakukelly/music/SakuKellyApp;)Lcoil/memory/MemoryCache;
    .locals 0

    invoke-static {p0}, Lcom/sakukelly/music/SakuKellyApp;->newImageLoader$lambda$0(Lcom/sakukelly/music/SakuKellyApp;)Lcoil/memory/MemoryCache;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$A8ZQWy2ue5hWk2EAKsyL2fJS-ao(Lcom/sakukelly/music/SakuKellyApp;)Lcoil/disk/DiskCache;
    .locals 0

    invoke-static {p0}, Lcom/sakukelly/music/SakuKellyApp;->newImageLoader$lambda$1(Lcom/sakukelly/music/SakuKellyApp;)Lcoil/disk/DiskCache;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sakukelly/music/SakuKellyApp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sakukelly/music/SakuKellyApp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sakukelly/music/SakuKellyApp;->Companion:Lcom/sakukelly/music/SakuKellyApp$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDatabase$cp()Lcom/sakukelly/music/data/db/AppDatabase;
    .locals 1

    .line 18
    sget-object v0, Lcom/sakukelly/music/SakuKellyApp;->database:Lcom/sakukelly/music/data/db/AppDatabase;

    return-object v0
.end method

.method public static final synthetic access$getOkHttpClient$cp()Lokhttp3/OkHttpClient;
    .locals 1

    .line 18
    sget-object v0, Lcom/sakukelly/music/SakuKellyApp;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private static final newImageLoader$lambda$0(Lcom/sakukelly/music/SakuKellyApp;)Lcoil/memory/MemoryCache;
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcoil/memory/MemoryCache$Builder;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Lcoil/memory/MemoryCache$Builder;-><init>(Landroid/content/Context;)V

    const-wide/high16 v1, 0x3fd0000000000000L    # 0.25

    .line 45
    invoke-virtual {v0, v1, v2}, Lcoil/memory/MemoryCache$Builder;->maxSizePercent(D)Lcoil/memory/MemoryCache$Builder;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Lcoil/memory/MemoryCache$Builder;->build()Lcoil/memory/MemoryCache;

    move-result-object p0

    return-object p0
.end method

.method private static final newImageLoader$lambda$1(Lcom/sakukelly/music/SakuKellyApp;)Lcoil/disk/DiskCache;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcoil/disk/DiskCache$Builder;

    invoke-direct {v0}, Lcoil/disk/DiskCache$Builder;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/sakukelly/music/SakuKellyApp;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "getCacheDir(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "image_cache"

    invoke-static {p0, v1}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcoil/disk/DiskCache$Builder;->directory(Ljava/io/File;)Lcoil/disk/DiskCache$Builder;

    move-result-object p0

    const-wide/32 v0, 0x6400000

    .line 51
    invoke-virtual {p0, v0, v1}, Lcoil/disk/DiskCache$Builder;->maxSizeBytes(J)Lcoil/disk/DiskCache$Builder;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lcoil/disk/DiskCache$Builder;->build()Lcoil/disk/DiskCache;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public newImageLoader()Lcoil/ImageLoader;
    .locals 2

    .line 42
    new-instance v0, Lcoil/ImageLoader$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcoil/ImageLoader$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v1, Lcom/sakukelly/music/SakuKellyApp$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sakukelly/music/SakuKellyApp$$ExternalSyntheticLambda0;-><init>(Lcom/sakukelly/music/SakuKellyApp;)V

    invoke-virtual {v0, v1}, Lcoil/ImageLoader$Builder;->memoryCache(Lkotlin/jvm/functions/Function0;)Lcoil/ImageLoader$Builder;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/sakukelly/music/SakuKellyApp$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sakukelly/music/SakuKellyApp$$ExternalSyntheticLambda1;-><init>(Lcom/sakukelly/music/SakuKellyApp;)V

    invoke-virtual {v0, v1}, Lcoil/ImageLoader$Builder;->diskCache(Lkotlin/jvm/functions/Function0;)Lcoil/ImageLoader$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Lcoil/ImageLoader$Builder;->crossfade(Z)Lcoil/ImageLoader$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcoil/ImageLoader$Builder;->build()Lcoil/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .line 28
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 31
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 32
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v4, 0x1e

    .line 33
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 34
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 31
    sput-object v0, Lcom/sakukelly/music/SakuKellyApp;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 38
    sget-object v0, Lcom/sakukelly/music/data/db/AppDatabase;->Companion:Lcom/sakukelly/music/data/db/AppDatabase$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sakukelly/music/data/db/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/sakukelly/music/data/db/AppDatabase;

    move-result-object v0

    sput-object v0, Lcom/sakukelly/music/SakuKellyApp;->database:Lcom/sakukelly/music/data/db/AppDatabase;

    return-void
.end method
