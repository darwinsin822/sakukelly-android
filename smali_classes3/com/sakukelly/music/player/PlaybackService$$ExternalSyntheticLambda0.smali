.class public final synthetic Lcom/sakukelly/music/player/PlaybackService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/sakukelly/music/player/PlaybackService;


# direct methods
.method public synthetic constructor <init>(Lcom/sakukelly/music/player/PlaybackService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$$ExternalSyntheticLambda0;->f$0:Lcom/sakukelly/music/player/PlaybackService;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$$ExternalSyntheticLambda0;->f$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->$r8$lambda$sXJ4SK9xFZlgvRQ3nwXDQcwRU7w(Lcom/sakukelly/music/player/PlaybackService;)Lcom/sakukelly/music/data/prefs/SettingsPrefs;

    move-result-object v0

    return-object v0
.end method
