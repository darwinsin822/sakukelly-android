.class public final Lcom/sakukelly/music/ui/widget/SakuKellyWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "SakuKellyWidget.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sakukelly/music/ui/widget/SakuKellyWidget$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSakuKellyWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SakuKellyWidget.kt\ncom/sakukelly/music/ui/widget/SakuKellyWidget\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,118:1\n1#2:119\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J \u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sakukelly/music/ui/widget/SakuKellyWidget;",
        "Landroid/appwidget/AppWidgetProvider;",
        "<init>",
        "()V",
        "onUpdate",
        "",
        "context",
        "Landroid/content/Context;",
        "appWidgetManager",
        "Landroid/appwidget/AppWidgetManager;",
        "appWidgetIds",
        "",
        "updateWidget",
        "appWidgetId",
        "",
        "onReceive",
        "intent",
        "Landroid/content/Intent;",
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
.field public static final $stable:I = 0x0

.field public static final ACTION_PLAY_PAUSE:Ljava/lang/String; = "com.sakukelly.music.WIDGET_PLAY_PAUSE"

.field public static final ACTION_SKIP_NEXT:Ljava/lang/String; = "com.sakukelly.music.WIDGET_SKIP_NEXT"

.field public static final ACTION_SKIP_PREV:Ljava/lang/String; = "com.sakukelly.music.WIDGET_SKIP_PREV"

.field public static final Companion:Lcom/sakukelly/music/ui/widget/SakuKellyWidget$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sakukelly/music/ui/widget/SakuKellyWidget$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sakukelly/music/ui/widget/SakuKellyWidget$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sakukelly/music/ui/widget/SakuKellyWidget;->Companion:Lcom/sakukelly/music/ui/widget/SakuKellyWidget$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private final updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 6

    .line 46
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sakukelly/music/R$layout;->widget_player:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 51
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sakukelly/music/MainActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    .line 49
    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 54
    sget v4, Lcom/sakukelly/music/R$id;->widget_container:I

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/sakukelly/music/ui/widget/SakuKellyWidget;

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.sakukelly.music.WIDGET_SKIP_PREV"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 57
    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 62
    sget v2, Lcom/sakukelly/music/R$id;->widget_btn_prev:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 67
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.sakukelly.music.WIDGET_PLAY_PAUSE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x1

    .line 65
    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 70
    sget v2, Lcom/sakukelly/music/R$id;->widget_btn_play_pause:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 75
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.sakukelly.music.WIDGET_SKIP_NEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x2

    .line 73
    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 78
    sget v2, Lcom/sakukelly/music/R$id;->widget_btn_skip:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 81
    :try_start_0
    sget-object v1, Lcom/sakukelly/music/player/PlayerController;->Companion:Lcom/sakukelly/music/player/PlayerController$Companion;

    invoke-virtual {v1, p1}, Lcom/sakukelly/music/player/PlayerController$Companion;->getInstance(Landroid/content/Context;)Lcom/sakukelly/music/player/PlayerController;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {p1}, Lcom/sakukelly/music/player/PlayerController;->getCurrentSong()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sakukelly/music/data/model/Song;

    if-eqz v1, :cond_0

    .line 85
    sget v2, Lcom/sakukelly/music/R$id;->widget_title:I

    invoke-virtual {v1}, Lcom/sakukelly/music/data/model/Song;->getTitle()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 86
    sget v2, Lcom/sakukelly/music/R$id;->widget_artist:I

    invoke-virtual {v1}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/sakukelly/music/player/PlayerController;->isPlaying()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x1080023

    goto :goto_1

    :cond_1
    const p1, 0x1080024

    .line 93
    :goto_1
    sget v1, Lcom/sakukelly/music/R$id;->widget_btn_play_pause:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 96
    :cond_2
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 101
    :try_start_0
    sget-object v0, Lcom/sakukelly/music/player/PlayerController;->Companion:Lcom/sakukelly/music/player/PlayerController$Companion;

    invoke-virtual {v0, p1}, Lcom/sakukelly/music/player/PlayerController$Companion;->getInstance(Landroid/content/Context;)Lcom/sakukelly/music/player/PlayerController;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5d4b3597

    if-eq v1, v2, :cond_4

    const v2, -0x2f071b6b

    if-eq v1, v2, :cond_2

    const v2, -0x2f06042b

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "com.sakukelly.music.WIDGET_SKIP_PREV"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {v0}, Lcom/sakukelly/music/player/PlayerController;->skipPrev()V

    .line 113
    sget-object p2, Lcom/sakukelly/music/ui/widget/SakuKellyWidget;->Companion:Lcom/sakukelly/music/ui/widget/SakuKellyWidget$Companion;

    invoke-virtual {p2, p1}, Lcom/sakukelly/music/ui/widget/SakuKellyWidget$Companion;->updateAllWidgets(Landroid/content/Context;)V

    goto :goto_1

    .line 102
    :cond_2
    const-string v1, "com.sakukelly.music.WIDGET_SKIP_NEXT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    .line 108
    :cond_3
    invoke-virtual {v0}, Lcom/sakukelly/music/player/PlayerController;->skipNext()V

    .line 109
    sget-object p2, Lcom/sakukelly/music/ui/widget/SakuKellyWidget;->Companion:Lcom/sakukelly/music/ui/widget/SakuKellyWidget$Companion;

    invoke-virtual {p2, p1}, Lcom/sakukelly/music/ui/widget/SakuKellyWidget$Companion;->updateAllWidgets(Landroid/content/Context;)V

    goto :goto_1

    .line 102
    :cond_4
    const-string v1, "com.sakukelly.music.WIDGET_PLAY_PAUSE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {v0}, Lcom/sakukelly/music/player/PlayerController;->isPlaying()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {v0}, Lcom/sakukelly/music/player/PlayerController;->pause()V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/sakukelly/music/player/PlayerController;->resume()V

    .line 105
    :goto_0
    sget-object p2, Lcom/sakukelly/music/ui/widget/SakuKellyWidget;->Companion:Lcom/sakukelly/music/ui/widget/SakuKellyWidget$Companion;

    invoke-virtual {p2, p1}, Lcom/sakukelly/music/ui/widget/SakuKellyWidget$Companion;->updateAllWidgets(Landroid/content/Context;)V

    :catch_0
    :cond_7
    :goto_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetIds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p3, v1

    .line 41
    invoke-direct {p0, p1, p2, v2}, Lcom/sakukelly/music/ui/widget/SakuKellyWidget;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
