.class public Lorg/jaudiotagger/audio/wav/chunk/WavChunkSummary;
.super Ljava/lang/Object;
.source "WavChunkSummary.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-string v0, "org.jaudiotagger.audio.wav.chunk"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavChunkSummary;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChunkBeforeFirstMetadataTag(Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkSummary;
    .locals 5

    .line 92
    invoke-static {p0}, Lorg/jaudiotagger/audio/wav/chunk/WavChunkSummary;->getStartLocationOfFirstMetadataChunk(Lorg/jaudiotagger/tag/wav/WavTag;)J

    move-result-wide v0

    const/4 v2, 0x0

    .line 94
    :goto_0
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getChunkSummaryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 96
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getChunkSummaryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/audio/iff/ChunkSummary;

    .line 97
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_0

    .line 99
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getChunkSummaryList()Ljava/util/List;

    move-result-object p0

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStartLocationOfFirstMetadataChunk(Lorg/jaudiotagger/tag/wav/WavTag;)J
    .locals 2

    .line 26
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getMetadataChunkSummaryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getMetadataChunkSummaryList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/iff/ChunkSummary;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static isOnlyMetadataTagsAfterStartingMetadataTag(Lorg/jaudiotagger/tag/wav/WavTag;)Z
    .locals 8

    .line 42
    invoke-static {p0}, Lorg/jaudiotagger/audio/wav/chunk/WavChunkSummary;->getStartLocationOfFirstMetadataChunk(Lorg/jaudiotagger/tag/wav/WavTag;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 45
    sget-object p0, Lorg/jaudiotagger/audio/wav/chunk/WavChunkSummary;->logger:Ljava/util/logging/Logger;

    const-string v0, "Unable to find any metadata tags !"

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    return v3

    .line 50
    :cond_0
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavTag;->getChunkSummaryList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v3

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jaudiotagger/audio/iff/ChunkSummary;

    if-eqz v2, :cond_2

    .line 55
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getChunkId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/wav/WavChunkType;->ID3:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 56
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getChunkId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/wav/WavChunkType;->ID3_UPPERCASE:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 57
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getChunkId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/wav/WavChunkType;->LIST:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 58
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getChunkId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/jaudiotagger/audio/wav/WavChunkType;->INFO:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return v3

    .line 66
    :cond_2
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v6

    cmp-long v4, v6, v0

    if-nez v4, :cond_1

    move v2, v5

    goto :goto_0

    :cond_3
    if-ne v2, v5, :cond_4

    return v5

    :cond_4
    return v3
.end method
